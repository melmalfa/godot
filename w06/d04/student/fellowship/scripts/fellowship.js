console.log("Linked.");

// Dramatis Personae
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];

var lands = ['The Shire', 'Rivendell', 'Mordor'];
var shire = lands[0]
var body = document.querySelector('body');

function makeMiddleEarth() {
  var midEarth = document.createElement("section");
  midEarth.id = "middle-earth"

  var shire = lands[0]
  shire = document.createElement("article")
 midEarth.appendChild(shire)
  var shireH1 = document.createElement("h1")
  shireH1.textcontent = ("The Shire")
shire.appendChild(shireH1)

  var rivendell = lands[1]
  rivendell = document.createElement("article")
  midEarth.appendChild(rivendell)
  var rivendellH1 = document.createElement("h1")
  rivendellH1.textcontent = ("Rivendell")
rivendell.appendChild(rivendellH1)

  var mordor = lands[2]
  mordor = document.createElement("article")
  midEarth.appendChild(mordor)
  var mordorH1 = document.createElement("h1")
  mordorH1.textcontent = ("Mordor")
mordor.appendChild(mordorH1)

    body.appendChild(midEarth)
}

//this took me sooooo long. to lay out the logic of the steps, then trial and error- what website can you point me too that specifically helps in creating and appending lots of info at a time on Javascript? I found tons of info about changing or adding to existing page content, but not to just plain old creating new shit. I found it difficult to find relevant info for this problem :(
  //ps- wow i complain a lot!!!! maybe i was just tired . . . :)

var the Shire = body.querySe;ectprA;;('article')[0]


makeMiddleEarth();

function makeHobbits() {
  var hobbitList =


function makeHobbits() {
  var hobbitList = document.createElement("ul")
  shire.appendChild(hobbitList)
  document.querySelector('shire')

  var baggins = hobbits[0]
  baggins = document.createElement("li")
  baggins.class = "hobbit"
  hobbitList.appendChild(baggins)

  var sam = hobbits[1]
  sam = document.createElement("li")
  sam.class = "hobbit"
  hobbitList.appendChild(sam)

  var merry = hobbits[2]
  merry = document.createElement("li")
  merry.class = "hobbit"
  hobbitList.appendChild(merry)

  var peri = hobbits[3]
  peri = document.createElement("li")
  peri.class = "hobbit"
  hobbitList.appendChild(peri)
}

makeHobbits()

//i know the code won't run, but gotta keep moving on.

function keepItSecretKeepItSafe() {
  var ring = document.createElement("div")
  ring.createId = "the-ring"
  ring.className = "magic-imbued=jewelry"

}

// create a div with an id of 'the-ring'
  // give the div a class of 'magic-imbued-jewelry'
  // add an event listener so that when a user clicks on the ring, the nazgulScreech function (provided) is invoked
  // add the ring as a child of Frodo






