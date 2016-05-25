require "minitest/autorun"

describe Hash do
  require "./parse"

  before do
    @hash = Parse.new ({'yes' => 23, 'b'=> 'travel', 'yesterday' => 34,\
                        5 => '234', :yesss => :fg, try: 30,\
                        key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014})
  end

  describe "Need convert each key type to Symbol" do
    it "successful symbolizing" do
      @hash.symbolize.keys.each{ |current| current.is_a? Symbol}
    end
  end

  describe "hash_scan_for_the_yes" do
    it "successful scaning" do
      @hash.hash_scan_for_the_yes.must_equal 5
    end
  end
end
