var colors;
colors = ["purple", "periwinkle", "blue", "mauve", "pink"]
console.log(colors)

var rebelColors;
rebelColors = ["clear", "rainbow"]

var iLove;
iLove = function(thing){
  console.log("I love " + thing)
  console.log("I love " + colors[0] + "the most!")
  console.log("I love " + colors[1] + "too!")
}

iLove(colors);

var iLove;
iLove = function(thing){
  return "I love " + thing;
}


console.log(iLove(colors[1]) + " too!");

// var len = colors.length;
// var i = 0;
// while (i < len) {
//   console.log("Make it stop!")
// }


var len = colors.length;
var i = 0;
while (i < len) {
  console.log(i + ": " + colors[i]);
  i += 1;
}


var thingsILove= ["this","that"]
var len = colors.length;
var i = 0;
while (i < len) {
  console.log( iLove(colors[i]) );
  thingsILove.push(iLove(colors[i]))
  i += 1;
}

debugger

//i++=i+1
for (var i = 0; i < colors.length; i++) {
  console.log( iLove(colors[i]) );
  thingsILove.push(iLove(colors[i]));
}

//this above is a special javascript thing which is a for loop.
//it is a purpose-built loop for iterating over arrays

var name = "melodie malfa";
if ("pj".length === 10) {
  console.log("I love green!)");
} else if ("pj".length < 10) {
  console.log("I love brown!");
} else {
  console.log("No!");

  car isTwentyOne = function(person)  {
    return person.age >= 21;
  }



