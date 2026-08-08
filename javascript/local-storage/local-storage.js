// saves a simple value in the browser
localStorage.setItem("username", "example_user");


// retrieves a saved value
const username = localStorage.getItem("username");

console.log(username);


// removes a specific saved value
localStorage.removeItem("username");


// removes all values stored by the current website
localStorage.clear();


// objects must be converted to json before being stored
const user = {
    name: "example",
    age: 20
};

localStorage.setItem("user", JSON.stringify(user));


// converts stored json back into a javascript object
const storedUser = JSON.parse(localStorage.getItem("user"));

console.log(storedUser);


// reusable function for saving objects
function saveData(key, value) {
    localStorage.setItem(key, JSON.stringify(value));
}


// reusable function for retrieving stored objects
function loadData(key) {
    const data = localStorage.getItem(key);

    return data ? JSON.parse(data) : null;
}


// reusable function for removing stored data
function removeData(key) {
    localStorage.removeItem(key);
}