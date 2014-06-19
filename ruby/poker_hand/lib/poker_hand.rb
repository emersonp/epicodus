def poker_hand(array)
	allSuits = {}
	allRanks = {}
	handValue = ""
	numberPairs = 0
	sortedRanks = []
	isStraight = false

	array.each do |card|
		tempRank = card[0].to_i
		tempSuit = card[1]
		if tempRank == "A"
			tempRank == 14
		elsif tempRank == "K"
			tempRank == 13
		elsif tempRank == "Q"
			tempRank == 12
		elsif tempRank == "J"
			tempRank == 11
		end
		
		if allRanks[tempRank].is_a? Numeric
			allRanks[tempRank] += 1
		else
			allRanks[tempRank] = 1
		end

		if allSuits[tempSuit].is_a? Numeric
			allSuits[tempSuit] += 1
		else
			allSuits[tempSuit] = 1
		end
	end

	allRanks.each do |rank, number|
		if number > 1
			numberPairs += 1
		end
		sortedRanks << rank
	end

	sortedRanks = sortedRanks.sort

	if sortedRanks[0] == sortedRanks[1] - 1 && sortedRanks[1] == sortedRanks[2] - 1 && sortedRanks[2] == sortedRanks[3] - 1 && sortedRanks[3] == sortedRanks[4] - 1
		isStraight = true
	end

	if allSuits.any? { |suit, number| number > 4 }
		handValue = "Flush"
	elsif isStraight
		handValue = "Straight"
	elsif allRanks.any? { |rank, number| number > 2 }
		handValue = "Three of a Kind"
	elsif numberPairs > 1
		handValue = "Two Pair"
	elsif allRanks.any? { |rank, number| number > 1 }
		handValue = "Pair"
	else
		handValue = "High Card"
	end
		
end