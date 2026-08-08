// selects the form and the inputs inside it
const form = document.querySelector(".form");
const nameInput = document.querySelector("#name");
const emailInput = document.querySelector("#email");


// runs when the form is submitted
form.addEventListener("submit", (event) => {
    event.preventDefault();

    // reads the current values entered by the user
    const name = nameInput.value;
    const email = emailInput.value;

    console.log(name);
    console.log(email);
});


// clears all form fields
function clearForm() {
    form.reset();
}


// creates an object from the current form values
function getFormData() {
    return {
        name: nameInput.value,
        email: emailInput.value
    };
}


// fills form fields using existing data
function fillForm(data) {
    nameInput.value = data.name;
    emailInput.value = data.email;
}