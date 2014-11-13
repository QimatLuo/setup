const https = require('https')

exports.get = function get (options) {
	return new Promise(
		(resolve, reject) => {
			const req = https.get(
				options,
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

exports.post = function post (options, postData) {
	return new Promise(
		(resolve, reject) => {
			const defaultOptions = {
				headers: {
					'Content-Type': 'application/json',
				},
				method: 'POST',
			}

			const req = https.request(
				Object.assign({}, defaultOptions, options),
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
