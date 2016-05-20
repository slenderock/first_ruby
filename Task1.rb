# first version of program without classes
table = [Array.new(4), Array.new(4), Array.new(4), Array.new(4)]
sum_of_neg = 0
puts ('Negative elements:')
table.each_index {|i|
  table[i].each_index {|j|
    table[i][j] = rand(-10...10)
    if table[i][j]<0
    	puts table[i][j]
    	sum_of_neg +=  table[i][j]
    end
  }
}
puts ('The sum of negative elements is')
puts sum_of_neg
