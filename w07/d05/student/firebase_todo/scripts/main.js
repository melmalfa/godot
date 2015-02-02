var fireStream = new Firebase("https://sizzling-torch-2450.firebaseio.com");

var description = $("#new-task").val();

var createTask = function(description) {
  var dataRef = fireStream.push({description: description, complete: false});
  var newID = dataRef.key();
  return newID;
};
// i think this function changes the complete status in firestream's database. so we will call this function when the checkbox is checked.
var toggleTaskComplete = function(taskID) {
  fireStream.child(taskID).child("complete").set(true);
};
// i think this function removes the task from firestream, therefore we will call this function, when the X is keypressed
var removeTask = function(taskID) {
  fireStream.child(taskID).remove();
};

//createTaskEl is the grey box listing the task on the page, with a checkbox next to it. creatTaskEl happens after the save or enter is hit after a new task is written in the taskbox at the top of the page.
var createTaskEl = function(description, complete, newID) {
  // newID refers to ID created in createTask, but maybe it should be value, and then make value = newID?? I thought maybe it should be createTask, since createTask returns the newID, but then it would also be pushing to fireBase at the same time, and this fuction is creating an html element, not pushing to firebase!

  var taskBox = $("<div>").addClass("task").attr("data-taskid", newID);
  // decided to put this above to use for other functions: var description = $("#new-task").val()
  $("<input>").attr("type", "checkbox").prop("checked", false).appendTo(taskBox);
  $("<span>").addClass("task-description").text(description).appendTo(taskBox);
  $("<span>").addClass("remove").text("X").appendTo(taskBox);
  // ???"return new task" <div>
}

// "add taskelement to the DOM"
var addTaskEl = function(description, complete, newID) {
  // ??? - I don't understand why we would repeat all the same inputs- did this really refer to arguments?"take all the same inputs as createTaskEl"
  var taskEl = createTaskEl(description, complete)
  $(".task-list").append(taskEl)
}

// ? to load this to the DOM, do I need to call my functions in the following?
window.onload = function(){
  addTaskEl();
}

var toggleTaskElComplete = function() {
  // "Toggle the class "complete" on the task element (<div>).""
  // "You can grab the correct element by finding the right data attribute"
  // ex. $('a[data-customerID=22]');
}

var removeTaskEl = function() {
   // "Remove the element based on the task ID"
   removeTask()
}

var newTask = function(taskID, description, complete) {
   // "creates and adds the new task as an element,""
  createTask();
  createTaskEl();
// "adds listeners to the element for the remove and complete events, which is easier with the jQuery#on method, passing a child selector to it"
  var killTask = function() {}
  taskEl.on("click", ".remove", killTask)
}


// from firebase chat example code chat.js

// When the user presses enter on the message input, write the message to firebase.
  // $("#messageInput").keypress(function (e) {
  //   if (e.keyCode == 13) {
  //     var name = $("#nameInput").val();
  //     var text = $("#messageInput").val();
  //     messagesRef.push({name:name, text:text});
  //     $("#messageInput").val("");
  //   }
  // });
// I infer from above the following:

// if (event.keyCode == 13 || submit-button-is-pushed)
// var description = ;
// createTaskEl()

// my own thoughts below:
//when enter writes in task, info is captured from input box into "description", when enter is pressed and/or submit button is pressed, task is created and list of all tasks is shown on page

// toggleTaskComplete- retrieving info from when user checks the box, and changes status of task complete from false to true. also changes class of task so that the text is strikedout. when user unclicks box, change complete to false again, and change task class to not being striked out

// when user hovers over task div, the x appears, and when use hovers off of div the x idsappears

//when user clicks X, div disappears, and data is removed from firebase

///show list of all tasks





