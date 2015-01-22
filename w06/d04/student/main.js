alert("main.js is loaded");

// querySelector grabs an element
var pTag = document.querySelector("p");

// textContent changes the elements text
pTag.textContent = "Aloha!";


// querySelectorALl grabs all matches
var ingredients = document.querySelectorAll("li")

document.querySelector("#smores-ingredients");

// can call .children on anything
// also can call .parentElement on anything's tree
// dom- we select by class and id (".class")
//parentElement will always be singular.
//querySelectorAll returns an array- so cannot call parentElement on it, can only call parentElement on individual node.
document.querySelector("#smores-ingredients").children;

//we can naviagett the DOM tree using children and parentElement

// create a DOM node with createElement
var liTag = document.createElement("li"); //not on the DOM
liTag.textContent = "Graham Cracker"; //not on the DOM
document.querySelector("#smores-ingredients").appendChild(liTag); //on the DOM

document.querySelector("body").style.backgroundColor = "purple"
//can also select and change thestyle of things

to access chocolate-
// can removeChild and appendChild



