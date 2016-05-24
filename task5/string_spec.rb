require "minitest/autorun"

describe String do
  require "./string"

    describe "string_split_to_array" do
      it "right answer" do
         "Fizz::Buzz::Wizz".string_split_to_array.must_equal ["Fizz::Buzz::Wizz", "Fizz::Buzz", "Fizz"]
    end
  end
end
