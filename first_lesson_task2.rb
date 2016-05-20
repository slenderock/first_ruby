some_hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
			 key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
i = 0
some_hash.each_key  do |current|
	#puts current.to_s.scan(/\byes\w*/)
	i += 1 if current.to_s.scan(/\byes\w*/).first
end
puts i
