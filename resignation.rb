class Resignation
  attr_accessor :name,:date,:kind_note
  def initialize(employee_name,end_date)
    @name=employee_name
    @date=end_date
    @kind_note = "With great sorrow"
  end

  def resign!
    puts "#{kind_note} #{name} here by resigns affect as of #{date}"
  end
end
becker = Resignation.new("Becker","2012-04-27")
becker.kind_note("I must cheer from the side lines now. With sadness")
becker.resign!
