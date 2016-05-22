class String
  def string_split_to_array (some_str)
    some_str = some_str.split(@spliter = '|')  if some_str.class == String and some_str.to_s.scan(/[{|}]/)  != []
    some_str = some_str.split(@spliter = '::') if some_str.class == String and some_str.to_s.scan(/[{::}]/) != []
    form_for_output(some_str)
  end

  def form_for_output (some_arr)
    result = Array.new(some_arr.length)
    result.each_index { |current|

      result[current] = some_arr.join(@spliter)
      some_arr.pop
    }
    result
  end
end

str1 = String.new
p str1.string_split_to_array ("Fizz|Buzz|Wizz")

str2 = String.new
p str2.string_split_to_array ("Fizz::Buzz::Wizz")
