class String

  def string_split_to_array

    splitter = self.scan(/\W+/).first          #split string to array with some symbol splitter
    parts    = self.split(splitter)
    result   = []

    parts.count.times do                      #form for output()
      result << parts.join(splitter)
      parts.pop
    end

    result
  end
end
                                              #testing
p "Fizz::Buzz::Wizz::DayZ".string_split_to_array
p "Fizz@Buzz@Wizz@DayZ".string_split_to_array
p "Fizz|Buzz|Wizz|DayZ".string_split_to_array
p "Fizz%^Buzz%^Wizz%^DayZ".string_split_to_array
p "Fizz&&Buzz&&Wizz&&DayZ".string_split_to_array
