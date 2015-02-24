var sleepIn = function(dayName) {
  if (dayName == 'Saturday' || dayName == 'Sunday') {
    return true;
  } else {
    return false;
  }
}

<<<<<<< HEAD

var pluralize = function(list) {
  var last = list.pop();
  var almostlast = list.pop()
  var sentence = "";
  for (var i = 0, len = list.length; i < len; i++) {
    sentence += (list[i] + ", ");
  }
  return sentence + almostlast + " and " + last;
}

// phil's code
var pluralize = function(list) {
  var tail = list.pop();
  return list.join(', ') + ' and ' + tail;
}



var prettyTime = function(y) {
  var div = Math.trunc(y/60);
  var rem = y % 60;
  if (rem == 0) {
    return div+" minutes";
  }
  else {
     return div+" minutes and "+rem+" seconds";
  }
=======
var pluralize = function(list) {
  return "lions, tigers and bears";
>>>>>>> eff856f00de42994e829006cc3be65a46ebc90a3
}
