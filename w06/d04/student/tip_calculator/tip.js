console.log("michael says moo");

var amountControl = document.querySelector("#amount");
var taxControl = document.querySelector("#tax")

amountControl.value = 20
taxControl.value = 8.7

  var amountContol = document.querySelector("#amount")
  var taxContol = document.querySelector("#tax")

var calculateTotalBill = function() {
  //get amount from input
  var amount = parseFloat(amountControl.vaue);
  var amount = parseFloat(taxControl.vaue);
  var tip = 0.2;
  var tipAmount = amount * tip;
  var totalBill = tipAmount + (amount*tax) + amount;
  totalControl.textClonetxt = test;

}

//call calculate total bill

var h1Tag = document.querySelector("h1");

var greeting = function(event) {
  alert("Moo!");
  console.log(event);
}

//event handler
var handleMouseOver = function(event) {
  console.log(event);
  console.log("mouseover");
}

//registering event listeners
h1Tag.addEventListener("click", greeting);
totalControl.addEventListener("mouseover", handleMouseOver);
var formSubmitHandler = function(event) {
  event.preventDefault();
  calculateTotalBill();
  console.log("I wil not be submitted");
}

// prevent the default behavior of the form
var form = document.querySelector("form");
form.addEventListener("submit", formSubmitHandler);
