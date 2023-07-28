let emailInput = document.querySelector("#email");
let passwordInput = document.querySelector("#password")
const button = document.querySelector("#button");
let feedback = document.querySelector("#feedback");
console.log(button)
button.addEventListener("click", () => {
    if (emailInput.value.length < 1 || passwordInput.value.length < 1) {

        feedback.innerHTML = "remplissez les différents champs!"
        feedback.style.display = "block"
        setTimeout(() => {
            feedback.style.display = "none"
        }, 3000);
        return
    }
    let email = emailInput.value;
    let password = passwordInput.value;
    let obj = { "email": email, "password": password };

    let xhr = new XMLHttpRequest();
    xhr.open("get", "/js/data.json");
    xhr.onload = function() {
        let data = JSON.parse(xhr.responseText)
            // console.log(typeof(data[0]))
        for (const obj2 of data) {
            if (obj2.email == email && obj2.password == password) {
                console.log(obj)
                console.log(obj2)
                feedback.innerText = "Bonjour " + obj2.nom
                feedback.style.backgroundColor = "lightgreen"
                feedback.style.display = "block";
                setTimeout(() => {
                    feedback.style.display = "none";
                }, 3000);
                return
            } else {
                feedback.innerText = "Utilisateur non reconue!"
                feedback.style.backgroundColor = "red"
                feedback.style.display = "block";
                setTimeout(() => {
                    feedback.style.display = "none";
                }, 3000);
            }
        }
    }
    xhr.send()
})