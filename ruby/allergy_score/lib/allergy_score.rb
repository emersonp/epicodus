def allergy_score(number)
	allergens = []
	if number >= 128
		allergens << "cats"
		number -= 128
	end
	if number >= 64
		allergens << "pollen"
		number -= 64
	end
	if number >= 32
		allergens << "chocolate"
		number -= 32
	end
	if number >= 16
		allergens << "tomatoes"
		number -= 16
	end
	if number >= 8
		allergens << "strawberries"
		number -= 8
	end
	if number >= 4
		allergens << "shellfish"
		number -= 4
	end
	if number >= 2
		allergens << "peanuts"
		number -= 2
	end
	if number >= 1
		allergens << "eggs"
		number -= 1
	end
	allergens
end