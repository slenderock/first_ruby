# Task 1 with class, methods and initialize
class Sum_of_neg
  attr_accessor :table

  def initialize
    table = Array.new(4) { Array.new(4) {rand(-10...10)} }
    @table = table
  end

  def calculate
    p table.flatten.select {|a| a < 0}.inject(0, :+)
  end

end

t = Sum_of_neg.new
t.calculate
