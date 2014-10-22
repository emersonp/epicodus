def prime_sift(number)
	siftArray = (2..number).to_a
	siftArray.each do |siftNumber|
		siftArray.each do |checkNumber|
			if checkNumber % siftNumber == 0 && checkNumber != siftNumber
				siftArray.delete(checkNumber)
			end
		end
	end
	siftArray
end