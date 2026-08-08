// checks that a value contains text
function isRequired(value) {
    return value.trim() !== "";
}


// checks that a string is at least the required length
function hasMinimumLength(value, minimumLength) {
    return value.length >= minimumLength;
}


// checks that an email follows a basic email format
function isValidEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    return emailPattern.test(email);
}


// checks that a number falls within a given range
function isWithinRange(value, minimum, maximum) {
    return value >= minimum && value <= maximum;
}


// checks whether two values match
function valuesMatch(firstValue, secondValue) {
    return firstValue === secondValue;
}


// example validation using multiple checks
function validateUser(name, email) {
    if (!isRequired(name)) {
        return false;
    }

    if (!isValidEmail(email)) {
        return false;
    }

    return true;
}