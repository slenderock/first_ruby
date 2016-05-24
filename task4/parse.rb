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
    @some_hash.keys.select {|a| a =~/\byes\w*/}.size
  end
end

hsh = Parse.new ({'yes' => 23, 'b'=> 'travel', 'yesterday' => 34, 5 => '234',
                  :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34,
                   'yesteryear' => 2014})

p hsh.hash_scan_for_the_yes
p hsh.symbolize
