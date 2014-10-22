def pig_latin(word)
	if ['a', 'e', 'i', 'o', 'u'].include?(word[0])
    	word + 'ay'
  	else
    	word[1..-1] + word[0] + 'ay'
  	end
end