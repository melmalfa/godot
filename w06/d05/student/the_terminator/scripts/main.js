console.log("main.js linked");

var inhabitants = document.querySelector("h1");

inhabitants.textContent = "Inhabitants of Los Angeles (1984)"

var cops = document.getElementsByClassName("cop collateral-damage")
// var cops = document.querySelectorAll(".cop");

for (var i = 0; i < cops.length; i++) {
  cops.color = "lightskyblue";
}

//for(var i = 0; i < cops.length; i++) {
//   cops[i].style.color = 'lightskyblue';
// }

var terminator = document.createElement("div")
terminator.className = "terminator"
document.querySelector("#los-angeles").appendChild(terminator)

var OneTrueSarahConnor = document.querySelector("#the-one-true-sarah-connor")

OneTrueSarahConnor.className = "badass"
//OneTrueSarahConnor.setAttribute("class", "badass");

var poorSouls = document.querySelectorAll(".collateral-damage")

for(var i = 0; i < poorSouls.length; i++) {
  poorSouls[i].parentNode.removeChild(poorSouls[i]);
}


// Iterate through poorSouls, removing the elements from the DOM one by one.
// Remove the terminator from the DOM.
