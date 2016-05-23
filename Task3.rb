# Task 1 with class, methods and initialize
class Sum_of_neg
  attr_accessor :table

  def initialize(table)
    @table = table
  end

  def randomize
    table.each_index do |i|
      table[i].each_index do |j|
        table[i][j] = rand(-10...10)
      end
    end
  end

  def calculate
    puts ('Negative elements:')
    res = 0
    table.each_index do |i|
      table[i].each_index do |j|
        if table[i][j] < 0
          puts table[i][j]
          res +=  table[i][j]
        end
      end
    end

    p 'The sum of negative elements :'
    res
  end
end

t = Sum_of_neg.new([Array.new(4), Array.new(4), Array.new(4), Array.new(4)])
t.randomize
p t.calculate
