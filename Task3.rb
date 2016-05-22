# Task 1 with with class, methods and initialize
class Sum_of_neg
  attr_accessor :table

  def initialize(table)
    @res = 0
    @table = table
  end

  def randomize
    table.each_index {|i|
      table[i].each_index {|j|
        table[i][j] = rand(-10...10)
      }
    }
  end

  def calculate
    puts ('Negative elements:')

    table.each_index {|i|
      table[i].each_index {|j|
        if table[i][j] < 0
          puts table[i][j]
          @res +=  table[i][j]
        end
      }
    }

    puts ("The sum of negative elements is #{@res}")
  end
end

t = Sum_of_neg.new([Array.new(4), Array.new(4), Array.new(4), Array.new(4)])
t.randomize
t.calculate
