# seccond version of program with Class, methods and initialize
class Sum_of_neg

  def initialize(table)
    @table = table
  end

  def table
    @table
  end

  def randomize       #(i,j,table)
    table.each_index {|i|
      table[i].each_index {|j|
        table[i][j] = rand(-10...10)
        # puts table[i][j]
      }
    }
    # @table[i][j] = rand(-10...10) #starting eror code
    # @table.randomize(i,j,table) if i != 4 and j != 4
    # i += 1
    # j += 1
  end

  def sum
    puts ('Negative elements:')
    @res = 0
    table.each_index {|i|
      table[i].each_index {|j|
        if table[i][j]<0
          puts table[i][j]
          @res +=  table[i][j]
        end
      }
    }
    puts ('The sum of negative elements is')
    return @res
  end
end

t = Sum_of_neg.new([Array.new(4), Array.new(4), Array.new(4), Array.new(4)])
t.randomize #(0,0,t)
puts t.sum
