// selects the element that will listen for an event
const button = document.querySelector(".button");


// runs code when the button is clicked
button.addEventListener("click", () => {
    console.log("button clicked");
});


// runs code when the mouse enters the element
button.addEventListener("mouseenter", () => {
    console.log("mouse entered");
});


// runs code when the mouse leaves the element
button.addEventListener("mouseleave", () => {
    console.log("mouse left");
});


// listens for keyboard input across the page
document.addEventListener("keydown", (event) => {
    console.log(event.key);
});


// selects a form for submit events
const form = document.querySelector(".form");


// prevents the browser from submitting the form
form.addEventListener("submit", (event) => {
    event.preventDefault();
    console.log("form submitted");
});