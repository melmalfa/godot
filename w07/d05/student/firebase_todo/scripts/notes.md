// console.log('main.js loaded');

//  create an object to hold our application's data

// (view layer)
// -form and header
//   -save button
//   -input box
// -task elements
//   -checkboxes
//   -delete option(x that you can click)
//   -task description (text)


// (model layer)
// tasks
//   -task completion status
//   -task description (text)

// var taskList = {};

// taskList["task1"] = {complete: false, description: "Walk the dog."};

// (behavior)
// delete action
// save action

// hash gives us a one-to-one correspondence. each piece of data has a unique id, so that when we delete stuff it doesn't need to be kept in an ORDERED list!

// let's separate our models and our views. modesl are the least amount of information- views are how we actually see them.

// code: information and behavior


// counter is just a descriptive term, it doesn't define anything
// taskList("counter") = 4 (because we already have 3 things in our list)

// var createTask = function(description, complete) {
// var uniqueID =
// taskList["uniqueID"] = {complete: complete, description: description};
// taskList.counter++;  //$redis.incr("task:counter")
//   return UniqueID;
// }


// var createTask = function(description, complete) {
//   var snapshot = firebase.push({complete: complete, description: description});
//   var uniqueID = snapshot.key()
//   return uniqueID;
// }

// var createTask = function(description) {
//   var dataRef = fireStream.push({description: description, complete: false});
//   var newID = dataRef.key();
//   return newID;
// };

// var toggleComplete = function(task) {
//   task.complete = !task.complete;
// }
