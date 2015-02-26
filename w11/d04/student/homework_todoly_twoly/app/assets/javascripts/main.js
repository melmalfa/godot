$(document).ready(function(){
  console.log("main.js linked");

  var tasksUl = $("#tasks");

//   $.ajax({
//     url: localhost
//     type: "GET"
//     dataType: "json"
//   }).done(function(data){
//     var taskId = data.id;
//     var taskDescription = data.description;
//   })
// task.complete? ? "true" : "false"
// task.id
// task.complete? ? "complete" : ""
// task.description
//  task.complete? ? "checked" : ""

  var taskTemplateSource = $("#task-template").html();
  var generateTaskHTML = _.template(taskTemplateSource);
  var TaskHTML = generateTaskHTML({ task_description: "Obtain more Cabbage Patch Kids" });
  var Task = tasksUl.append(TaskHTML);
  Task();


});
