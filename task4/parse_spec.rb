require "minitest/autorun"

describe Parse do
  require "./parse"

    before do
      @parse = Parse.new ({'yes' => 23, 'b'=> 'travel', 'yesterday' => 34, 5 => '234',
                  :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34,
                   'yesteryear' => 2014})
    end

    describe "symbolize" do
      it "right answer" do
         @parse.symbolize.each.as_a? Symbol
    end

    # describe "hash_scan_for_the_yes" do
      # it "right answer" do
         # .hash_scan_for_the_yes.must_equal
    # end

  end
end
