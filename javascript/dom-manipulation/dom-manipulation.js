// selects an element using its id
const title = document.getElementById("title");


// selects the first element matching a css selector
const button = document.querySelector(".button");


// selects every element matching a css selector
const items = document.querySelectorAll(".item");


// changes the visible text inside an element
title.textContent = "updated title";


// changes html inside an element
title.innerHTML = "<span>updated title</span>";


// changes a css property directly
title.style.display = "block";


// adds a css class to an element
title.classList.add("active");


// removes a css class from an element
title.classList.remove("active");


// switches a class on or off
title.classList.toggle("active");


// creates a new html element
const newItem = document.createElement("p");

newItem.textContent = "new item";


// adds the new element to the page
document.body.appendChild(newItem);


// loops through multiple selected elements
items.forEach((item) => {
    item.textContent = "updated item";
});


// removes an element from the page
newItem.remove();