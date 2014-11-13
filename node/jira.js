const https = require('https')

const host = 'jira.exosite.com'
const authorization = `Basic ${process.env.JIRA}`

get('/rest/api/2/filter/favourite')
	.then(requestUserInput)
	.then(searchTicketsByFilter)
	.then(generateChangelog)
	.catch(
		e => {
			console.log(e)
			console.log('Remember to setup your JIRA account and password')
			console.log('export JIRA=`echo -n "account:password" | base64`')
			console.log(`Your current basic auth: ${process.env.JIRA}`)
			console.log('')
			console.log('Sometimes you need to re-login website if your auth is right but get 403')
		}
	)

function get (path) {
	return new Promise(
		(resolve, reject) => {
			const req = https.get(
				{
					headers: {
						authorization,
					},
					host,
					path,
				},
				res => {
					let body = ''
					res.on('data', chunk => (body += chunk))
					res.on('end', () => {
						switch (res.statusCode) {
							case 200:
								try {
									resolve(JSON.parse(body))
								} catch(e) {
									resolve(body)
								}
								break
							default:
								console.log(res.statusCode)
								reject(body)
						}
					})
				}
			)
			req.on('error', reject)
		}
	)
}

function generateChangelog (searchResult) {
	const groupd = searchResult.issues.reduce(
		(acc, issue) => {
			const group  = acc[issue.fields.issuetype.name] || []
			group.push({
				key: issue.key,
				summary: issue.fields.summary,
			})
			acc[issue.fields.issuetype.name] = group
			return acc
		},
		{}
	)

	let date = new Date().toJSON().split('T').shift()
	let text = `## [?.?.?] - ${date}\n`
	for (let key in groupd) {
		text += `### ${key}\n`
		groupd[key].forEach(
			ticket => {
				text += `- **${ticket.key}** ${ticket.summary}\n`
			}
		)
	}

	const fs = require('fs')
	fs.writeFile('./JIRA', text, (err) => {
		if (err) return console.log(err)
		console.log('List was generated, please check the output file which names JIRA')
	})
}

function post (path, postData) {
	return new Promise(
		(resolve, reject) => {
			const req = https.request(
				{
					headers: {
						'Content-Type': 'application/json',
						authorization,
					},
					host,
					method: 'POST',
					path,
				},
				res => {
					let body = ''
					res.setEncoding('utf8')
					res.on('data', chunk => (body += chunk))
					res.on('end', () => {
						try {
							resolve(JSON.parse(body))
						} catch(e) {
							resolve(body)
						}
					})
				}
			)

			req.on('error', reject)

			req.write(JSON.stringify(postData))
			req.end()
		}
	)
}

function requestUserInput (filters) {
	return new Promise(
		(resolve, reject) => {
			filters.forEach(
				(filter, i) => {
					console.log(`${i} ${filter.name}`)
				}
			)

			const readline = require('readline')
			const rl = readline.createInterface({
				input: process.stdin,
				output: process.stdout,
			})
			rl.question(
				'\nSelect index: ',
				index => {
					resolve(filters[index])
					rl.close()
				}
			)
		}
	)
}

function searchTicketsByFilter (filter) {
	return post('/rest/api/2/search', {
		fields:[
			'issuetype',
			'key',
			'summary',
		],
		jql: filter.jql,
	})
}
