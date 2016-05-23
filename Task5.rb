class String

  def string_split_to_array (str)

    splitter = str.scan(/\W+/).first          #split string to array with some symbol splitter
    parts    = str.split(splitter)
    result   = []

    parts.count.times do                      #form for output()
      result << parts.join(splitter)
      parts.pop
    end

    result
  end
end
                                              #testing
str1 = String.new
p str1.string_split_to_array ("Fizz::Buzz::Wizz::DayZ")
p str1.string_split_to_array ("Fizz@Buzz@Wizz@DayZ")
p str1.string_split_to_array ("Fizz|Buzz|Wizz|DayZ")
p str1.string_split_to_array ("Fizz%^Buzz%^Wizz%^DayZ")
p str1.string_split_to_array ("Fizz&&Buzz&&Wizz&&DayZ")


#have some ideas about this comented code
# str = self if p self != ""
# p "Fizz::Buzz::Wizz::DayZ".string_split_to_array
