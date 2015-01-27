console.log('main.js loaded');

// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

// var addContentToDom = function() {
// // add content to the DOM
// var elAlbums = document.querySelector(".albums");
// elAlbums.appendChild(p);
// elAlbums.appendChild(ul);
// }
// //below tells it to:don't do this until the Dom is ready to have content loaded
// // window.addEventListener(event, action);
// window.addEventListener("load", addContentToDom);

//which came from

window.addEventListener("load", function(){
  console.log("LOAD");
  // add content to the DOM
  var elAlbums = document.querySelector(".albums");
  elAlbums.appendChild(p);
  elAlbums.appendChild(ul);

  for (var i=0, len=fleetwoodMacAlbums.length; i<len; i++) {
    var li = document.createElement("li");
    li.setAttribute("class", "album");
    li.textContent = fleetwoodMacAlbums[i].title + ", " + fleetwoodMacAlbums[i].releasedOn;
    ul.appendChild(li);
  }
});

moment(fleetwoodMacAlbums[i].releasedOn).format("MMM Do YYYY");

var logTitle = function(album) {
  return(album.title)
}
_.map(fleetwoodMacAlbums.logTitle)







// for (initializers; condition; incrementer)
// for (var i = 0, len = fleetwoodMacAlbums.length; i < len; i++ ) {
//   // get title from the data
//   var title = fleetwoodMacAlbums[i]["title"];
//   // create the dom node we want to append
//   var liTag = document.createElement("li");
//   // set the text of the dom node to the title
//   litag.setTextContent(title)
//   // append the dom node
//   ul.appendChild(liTag)
// }




// var addLiWithContent = function(content []) {}
//  var liTag = document.createElement("liTag");
//  liTag.textContent = content;
//   ul.appendChild(liTag);
// }

// for (var i = 0, len = fleetwoodMacAlbums.length; i < len; i++ ) {
//   addLiWithContent(ul, fleetwoodMacAlbums[i]["title"]);

// }


