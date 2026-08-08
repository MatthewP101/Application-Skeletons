// stores a value that can be changed later
let message = "hello world";

// stores a value that should not be reassigned
const applicationName = "example app";


// outputs information to the browser console
console.log(message);


// basic function that accepts data and returns a result
function addNumbers(a, b) {
    return a + b;
}


// calls the function and stores the returned value
const total = addNumbers(5, 10);

console.log(total);


// basic conditional logic
if (total > 10) {
    console.log("total is greater than 10");
} else {
    console.log("total is 10 or less");
}


// basic array containing multiple values
const items = ["item 1", "item 2", "item 3"];


// loops through every value in the array
items.forEach((item) => {
    console.log(item);
});


// basic object for storing related values
const user = {
    name: "example",
    age: 20
};


// accesses a value stored inside the object
console.log(user.name);