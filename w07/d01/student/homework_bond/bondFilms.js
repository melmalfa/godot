// the big thing is to remember to use "return" in map and select!

// ou may want to download the lodash and monet JS libraries and link to them locally just incase you don't have Internet

var ul = document.querySelector("ul")

var bondFilms = [
  { releasedOn: "5 October 1962",    actor: "Sean Connery",   gross:   "$440,759,072", title: "Dr. No" },
  { releasedOn: "10 October 1963",   actor: "Sean Connery",   gross:   "$576,277,964", title: "From Russia with Love" },
  { releasedOn: "17 September 1964", actor: "Sean Connery",   gross:   "$912,257,512", title: "Goldfinger" },
  { releasedOn: "9 December 1965",   actor: "Sean Connery",   gross: "$1,014,941,117", title: "Thunderball" },
  { releasedOn: "12 June 1967",      actor: "Sean Connery",   gross:   "$756,544,419", title: "You Only Live Twice" },
  { releasedOn: "18 December 1969",  actor: "George Lazenby", gross:   "$505,899,782", title: "On Her Majesty's Secret Service" },
  { releasedOn: "14 December 1971",  actor: "Sean Connery",   gross:   "$648,514,469", title: "Diamonds Are Forever" },
  { releasedOn: "27 June 1973",      actor: "Roger Moore",    gross:   "$825,110,761", title: "Live and Let Die" },
  { releasedOn: "19 December 1974",  actor: "Roger Moore",    gross:   "$448,249,281", title: "The Man with the Golden Gun" },
  { releasedOn: "7 July 1977",       actor: "Roger Moore",    gross:   "$692,713,752", title: "The Spy Who Loved Me" },
  { releasedOn: "26 June 1979",      actor: "Roger Moore",    gross:   "$655,872,400", title: "Moonraker" },
  { releasedOn: "24 June 1981",      actor: "Roger Moore",    gross:   "$486,468,881", title: "For Your Eyes Only" },
  { releasedOn: "6 June 1983",       actor: "Roger Moore",    gross:   "$426,244,352", title: "Octopussy" },
  { releasedOn: "22 May 1985",       actor: "Roger Moore",    gross:   "$321,172,633", title: "A View to a Kill" },
  { releasedOn: "27 June 1987",      actor: "Timothy Dalton", gross:   "$381,088,866", title: "The Living Daylights" },
  { releasedOn: "13 June 1989",      actor: "Timothy Dalton", gross:   "$285,157,191", title: "Licence to Kill" },
  { releasedOn: "13 November 1995",  actor: "Pierce Brosnan", gross:   "$529,548,711", title: "Goldeneye" },
  { releasedOn: "6 December 1997",   actor: "Pierce Brosnan", gross:   "$478,946,402", title: "Tomorrow Never Dies" },
  { releasedOn: "8 November 1999",   actor: "Pierce Brosnan", gross:   "$491,617,153", title: "The World is Not Enough" },
  { releasedOn: "20 November 2002",  actor: "Pierce Brosnan", gross:   "$543,639,638", title: "Die Another Day" },
  { releasedOn: "14 November 2006",  actor: "Daniel Craig",   gross:   "$669,789,482", title: "Casino Royale" },
  { releasedOn: "29 October 2008",   actor: "Daniel Craig",   gross:   "$622,246,378", title: "Quantum of Solace" },
  { releasedOn: "23 October 2012",   actor: "Daniel Craig",   gross: "$1,108,561,008", title: "Skyfall" }
];

// Write a method called grossToNumber that takes a gross as a string converts it into a number.

// grossToNumber("$622,246,378");
// // 622246378
var grossToNumber = function(gross) {
  gross.replace(/,/g, '').replace('$','');
}

console.log(grossToNumber("$622,246,378"));

ul.appendChild("li")

// Write a method called sumGrosses that takes bondFilms and returns the sum of all the grosses as a number.

// sumGrosses(bondFilms);

// var sumGrosses = function()
var grosses = _.map(bondFilms, 'gross');
var numbers = _.map(grosses, function(number) {return grossToNumber(number); });

var sum = _.reduce(numbers, function(sum, n) { return sum + n; });


