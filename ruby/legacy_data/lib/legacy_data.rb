def legacy_data(hash)
	newHash = {}

	hash.each do |value, array|
		array.each do |letter|
			newHash[letter] = value
		end
	end

	newHash

end
