require "minitest/autorun"

describe Array do
  require "./sum_of_neg"
    before do
      @arr = SumOfNeg.new(100,100)
    end

    describe "calculate" do
      it "right answer type" do
        @arr.calculate.is_a? Fixnum
      end
  end
end
