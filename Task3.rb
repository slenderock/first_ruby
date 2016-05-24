# Task 1 with class, methods and initialize
class Sum_of_neg
  attr_accessor :table

  def initialize (n,m)
    table = Array.new(n) { Array.new(m) {rand(-10...10)} }
    @table = table
  end

  def calculate
    p table.flatten.select {|a| a < 0}.inject(0, :+)
  end

end

t = Sum_of_neg.new(4,4)
t.calculate
