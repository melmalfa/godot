var instructor = "PJ"

console.log("Welcome, " + instructor + "!");

// primitives
// use === to compare
var aString, anInteger, aFloat, aBoolean;
aString = "This is a string.";
anInteger = 88;
aFloat = 3.4567;
aBoolean = true;

// our anti-types
// all of which are types of nil
null
undefined
NaN



// data structures

var anArray, anObject;

anArray = [aString, anInteger, aFloat, aBoolean];
anObject = {instructor: "Travis", dog: "Kait"};
//notates java script objects

//function (expression)

var aFunction;
aFunction = function(){
  console.log("hello world!");
};

//function (declaration)
//avoid doing it this way
//function anotherFunction(){
//   console.log("Hello World!");
// }

aFunction.call()
// that says run the code inside that variable
//or can just say aFunction()

var sayWhat = function(){
  console.log("say what!!!");
}




var sayWhat = function(that){
  console.log("say what? " + that)
}
// then run function and put variable in for that


