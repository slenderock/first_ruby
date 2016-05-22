class String
  def string_to_array (some_str)
    some_str.split('::')
    some_str.split('|')

  end
end

str1 = String.new
puts str1.string_to_array ("Fizz|Buzz|Wizz")
