from random import choice

class Resignation:
    def __init__(self, name, date):
        self.name = name
        self.date = date
        self.kind_note = "With great sorrow"
        self.reasons = []
        self.signoff = ""

    def random_reasons(self, reasons):
        self.reasons=reasons
        
    def resign(self):
        print """
{reason} {kind_note}
I, {name}, hereby resign effective as of {date}.
{signoff}
-{name}
""".format(reason=choice(self.reasons), kind_note=self.kind_note,
                                name=self.name, date=self.date, signoff=self.signoff)

becker = Resignation("Becker", "2012-04-27")
becker.kind_note = "I must cheer from the sidelines now."
reasons = [
  "It is time for me to move on.",
  "A T-rex told me in a dream to find a new job.",
  "I want to spend more time with my family.",
  "I'm joining the Peace Corps.",
  "My Facebook for Dogs startup got funded.",
  "I am going to buy storage lockers and get on TV.",
  "I need to devote more time to upvoting articles on Hacker News."
  ]
becker.random_reasons(reasons)
becker.signoff = "Until an asteroid,"
becker.resign()