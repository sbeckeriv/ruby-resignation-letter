class Resignation
  @kind_note: "With great sorrow"
  @reason_array: null
  @signoff: null
  constructor: (@name,@date) ->

  random_reasons: (reasons) ->
    @reason_array = reasons
  resign: -> 
    reason = ""
    reason = @reason_array[Math.floor(Math.random()*@reason_array.length)]+" " if @reason_array?
    alert "#{reason}#{@kind_note} I, #{@name}, hereby resign effective as of #{@date}.\n\n#{@signoff}\n-#{@name}"

becker = new Resignation "Becker", "2012-04-27"
becker.kind_note = "I must cheer from the side lines now."
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


