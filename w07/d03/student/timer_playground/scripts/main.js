//======================================================
// Never Fear, The Code Below is For An Upcoming Example
//======================================================
var body = document.querySelector('body');
var pronunciation = "poh-TAY-toh";
var button = document.querySelector('button');

var debate = function(){
  console.log(pronunciation);
  if (pronunciation === "poh-TAY-toh"){
    pronunciation = "po-TAH-toh";
  } else {
    pronunciation = "poh-TAY-toh";
  }
};

// setTimeout takes two arguments, the first is a function which holds the code we want to execute, and the second is the delay in milliseconds. Thus, the code below will run after 5 seconds.
setTimeout(function(){
  console.log("Game of Thrones, Season 5. Oh yeah.");
}, 5000);

var createP = function(){
  var newP = document.createElement("p");
  newP.textContent = "The Beatles";
  body.appendChild(newP);
};

setTimeout(createP, 6000);

// each time we invoke setInterval, it returns a timerID, and we store these IDs in variables, in case we want to clear them later on
var timerOne = setInterval(debate, 1000);
var timerTwo = setInterval(debate, 1000);
var timerThree = setInterval(debate, 1000);

// clears out the two extra intervals, so that only one potAYtoh/poTAHtoh debate rages on place.
clearInterval(timerTwo);
clearInterval(timerThree);

var singRefrain = function(){
  var nahNah = document.createElement('p');
  nahNah.style.color = 'red';
  nahNah.textContent = 'Nah nah nah nah nah nah nah, nah nah nah nah, Hey Jude';
  body.appendChild(nahNah);
};

var intervalOne = setInterval(singRefrain, 5000);

// clears interval, keeping the beatles from singing

var makeObservation = function(){
  var observation = document.createElement('p');
  observation.style.color = "blue";
  observation.textContent = 'Wow, you must really like this page.';
  body.appendChild(observation);
};

var timeoutOne = setTimeout(makeObservation, 15000);

var button = document.querySelector("button");

button.addEventListener('click', function(){
  clearInterval(intervalOne);
  clearTimeout(timeoutOne);
  this.parentNode.removeChild(this);
});






// var body = document.querySelector('body');
// // var pronunciation = "poh-TAY-toh";

// // var debate = function(){
// //   console.log(pronunciation);
// //   if (pronunciation === "poh-TAY-toh"){
// //     pronunciation = "po-TAH-toh";
// //   } else {
// //     pronunciation = "poh-TAY-toh";
// //   }
// // };

// //setTimeout takes two argujments, the first is a function which holds the code we want to execute and the second is the delay in milliseconds
// // thus, the code below will run in 5 seconds
// setTimeout(function(){
// console.log("oh yeah")
// }, 5000)

// var createP = function() {
//   var newP = document.createElement('p');
//   newP.textContent = "The Beatles";
//   body.appendChild(newP);
// }

// setTimeout(createP, 6000);

// // var timerOne = setInterval(debate, 1000);
// // var timerTwo = setInterval(debate, 1000);
// // var timerThree = setInterval(debate, 1000);

// // then can use clearInterval to clear a timer

//  var p = document.createElement("p")

// var heyJude = function(){
//   p.style.color = "red"
//   p.textContent = "Nah nah nah nah, nah nah nah nah, hey Jude";
//   body.appendChild(p)
// }

// var intervalOne = setInterval(heyJude, 5000);

// var pLike = document.createElement("p")


// var pWow = function() {
//     pLike.style.color = "purple";
//   pLike.textContent = "Wow, you must really like this page...";
//   body.appendChild(pLike)
// }

// var intervalTwo = setTimeout(pWow, 15000);


// button = document.querySelector("button")
// h1 = document.querySelector("h1")

// var buttonFunc = function() {
//   clearInterval(intervalOne);
//   h1.removeChild(button)
// }

// button.addEventListener("click", buttonFunc)

// var timeoutOne = setTimeout(pWow, 20000);










