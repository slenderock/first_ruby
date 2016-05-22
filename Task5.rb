class String
  def string_split_to_array (some_str)
    some_str = some_str.split(/[:]{2}|[({|})]/)

    form_for_output(some_str)
  end

  def form_for_output (some_arr)
    result = Array.new(some_arr.length)
    result.each_index { |current|

      result[current] = some_arr.join("::")
      some_arr.pop
    }
    result
  end
end

str1 = String.new
p str1.string_split_to_array ("Fizz::Buzz|Wizz")

str2 = String.new
p str2.string_split_to_array ("Fizz|Buzz::Wizz")
