import Rx from 'rxjs/Rx'




const a$ = new Rx.ReplaySubject(1)

a$
	.subscribe(
		r => console.log('a', r)
	)


document.addEventListener('click', () => {
	fetch('https://smarthome-dev.apps.exosite.io/test?limit=1')
		.then(r => r.json())
		.then(r => a$.next(r))
})

setTimeout(
	() => {
		a$
			.subscribe(
				r => console.log('b', r)
			)
	},
	5000
)
