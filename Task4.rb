#Task 2 with class, method and recursive method "symbolize"
class Parse
  def initialize (some_hash)
    @some_hash = some_hash
  end

  def symbolize (hash = @some_hash)                        #recursive method for converting to symbol each key
    key    = hash.first[0]
    value  = hash.first[1]
    result = {}

    hash.delete(key)                                       #destroy hash
    result.merge!(symbolize(hash)) unless hash.empty?      #set all value and keys from destroyed hash to new result hash

    result.merge(key.to_s.to_sym => value)                 #return current symbolized key
  end

  def hash_scan_for_the_yes
    i = 0

    @some_hash.each_key  do |current|
      #puts current.to_s.scan(/\byes\w*/)                  #need for testing
      i += 1 if current.to_s.scan(/\byes\w*/).first
    end

    get_resault(i)
  end
                                                           #method for output as says in task
  def get_resault(i)
    p ("result = #{i}")
  end
end

hsh = Parse.new ({'yes' => 23, 'b'=> 'travel', 'yesterday' => 34, 5 => '234',
                  :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34,
                   'yesteryear' => 2014})

hsh.hash_scan_for_the_yes
p hsh.symbolize
