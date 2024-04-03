(() => {
    const loginRegex = /^[a-zA-Z0-9._-]$/
    const passwordRegex = /^([a-zA-Z0-9._])$/

    const form = document.querySelector('#my_form')

    form.addEventListener('submit', (e) => {
        e.preventDefault()

        const loginInput = form.querySelector('[data-validate=login]')
        const passwordInput = form.querySelector('[data-validate=password]')

        const login = loginInput.value
        const password = passwordInput.value

        const errorHolders = [
            loginInput.parentElement.querySelector('.error-holder'),
            passwordInput.parentElement.querySelector('.error-holder'),
        ]

        errorHolders.forEach(errorHolder => errorHolder.innerHTML = '')

        if (!loginRegex.test(login)) {
            loginInput.classList.add('error')
            const errorMessage = document.createElement('p')
            errorMessage.innerText = 'Please enter a valid login address'
            errorHolders[0].appendChild(errorMessage)
        } else {
           loginInput.classList.remove('error')
        }

        if (!passwordRegex.test(password)) {
            passwordInput.classList.add('error')
            const errorMessage = document.createElement('p')
            errorMessage.innerText = 'Please enter a valid password'
            errorHolders[2].appendChild(errorMessage)
        } else {
            passwordInput.classList.remove('error')
        }
    })
})()