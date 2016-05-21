#first version of program without classes
class Parse
  def initialize (some_hash)
    @some_hash = some_hash
    @i = 0
  end

  def symbolize (hash = @some_hash)
    key    = hash.first[0]
    value  = hash.first[1]
    result = {}

    hash.delete(key)
    result.merge!(symbolize(hash)) unless hash.empty?

    result.merge(key.to_s.to_sym => value)
  end

  def scan_hash_yes

    @some_hash.each_key  do |current|
      #puts current.to_s.scan(/\byes\w*/) #need for testing
      @i += 1 if current.to_s.scan(/\byes\w*/).first
    end

    get_resault
  end

  def get_resault
    puts ("result = #{@i}")
  end
end

hsh = Parse.new ({'yes' => 23, 'b'=> 'travel', 'yesterday' => 34, 5 => '234',
                  :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34,
                   'yesteryear' => 2014})
puts hsh.symbolize
hsh.scan_hash_yes
