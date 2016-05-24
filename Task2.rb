#first version of program without classes
some_hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
			 key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
p some_hash.keys.select {|a| a =~/\byes\w*/}.size
