class Resignation
  attr_accessor :name,:date,:kind_note,:reason_array
  def initialize(employee_name,end_date)
    @name=employee_name
    @date=end_date
    @kind_note = "With great sorrow"
  end
  def random_reasons(reasons)
    @reason_array=reasons
  end
  def resign!
    reason = reason_array ? reason_array[rand(reason_array.size)]+" " : ""
    puts "#{reason}#{kind_note} #{name} here by resigns effective as of #{date}"
  end
end
becker = Resignation.new("Becker","2012-04-27")
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
becker.resign!

