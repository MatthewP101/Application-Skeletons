// pauses execution for a set amount of time
function sleep(milliseconds) {
    return new Promise((resolve) => {
        setTimeout(resolve, milliseconds);
    });
}


// generates a random whole number between two values
function randomNumber(minimum, maximum) {
    return Math.floor(Math.random() * (maximum - minimum + 1)) + minimum;
}


// capitalises the first letter of a string
function capitalise(value) {
    return value.charAt(0).toUpperCase() + value.slice(1);
}


// removes extra whitespace from the beginning and end of a string
function cleanText(value) {
    return value.trim();
}


// checks whether an array contains a value
function containsValue(array, value) {
    return array.includes(value);
}


// removes duplicate values from an array
function removeDuplicates(array) {
    return [...new Set(array)];
}


// returns a random item from an array
function randomItem(array) {
    const index = Math.floor(Math.random() * array.length);

    return array[index];
}


// checks whether a value is null or undefined
function isEmpty(value) {
    return value === null || value === undefined;
}