#first version of program without classes
class Parse
  def initialize (some_hash)
    @some_hash = some_hash
    @i = 0
  end

  # def to_string
  #   @some_hash.key = some_hash.key.to_s
  #     next key
  #     some_hash.to_string
  # end

  def scan_yes
    @some_hash.each_key  do |current|
    #puts current.to_s.scan(/\byes\w*/) #need for testing
    @i += 1 if current.to_s.scan(/\byes\w*/).first
    i.get_resault
  end

  end

  def get_resault
    puts @i
  end
end

hsh = Parse.new ['yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
  key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014]
hsh.scan_yes
