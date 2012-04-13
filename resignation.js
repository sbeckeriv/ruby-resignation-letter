var Resignation, becker, reasons;
Resignation = (function() {
  Resignation.kind_note = "With great sorrow";
  Resignation.reason_array = null;
  Resignation.signoff = null;
  function Resignation(name, date) {
    this.name = name;
    this.date = date;
  }
  Resignation.prototype.random_reasons = function(reasons) {
    return this.reason_array = reasons;
  };
  Resignation.prototype.resign = function() {
    var reason;
    reason = "";
    if (this.reason_array != null) {
      reason = this.reason_array[Math.floor(Math.random() * this.reason_array.length)] + " ";
    }
    return alert("" + reason + this.kind_note + " I, " + this.name + ", hereby resign effective as of " + this.date + ".\n\n" + this.signoff + "\n-" + this.name);
  };
  return Resignation;
})();
becker = new Resignation("Becker", "2012-04-27");
becker.kind_note = "I must cheer from the sidelines now.";
reasons = ["It is time for me to move on.", "A T-rex told me in a dream to find a new job.", "I want to spend more time with my family.", "I'm joining the Peace Corps.", "My Facebook for Dogs startup got funded.", "I am going to buy storage lockers and get on TV.", "I need to devote more time to upvoting articles on Hacker News."];
becker.random_reasons(reasons);
becker.signoff = "Until an asteroid,";
becker.resign();