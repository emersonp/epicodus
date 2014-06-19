def title_case(phrase)
	fullPhrase = ""
	phraseArr = phrase.split(" ")
	phraseArr.each do |word|
		fullPhrase += title_case_word(word) + " "
	end
	fullPhrase = fullPhrase[0...-1]
	fullPhrase
end

def title_case_word(word)
	word = word.downcase
	word = word[0].upcase + word[1..-1]
end
