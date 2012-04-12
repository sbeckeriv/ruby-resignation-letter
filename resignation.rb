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
becker.kind_note("I must cheer from the side lines now.")
becker.resign!

