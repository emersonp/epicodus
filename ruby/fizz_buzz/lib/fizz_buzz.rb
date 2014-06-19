def fizz_buzz(number)
	fizz_buzz_array = []
	add_counter = 1

	while add_counter <= number do
		if add_counter % 3 == 0 && add_counter % 5 == 0
			fizz_buzz_array << "fizzbuzz"
		elsif add_counter % 5 == 0
			fizz_buzz_array << "buzz"
		elsif add_counter % 3 == 0
			fizz_buzz_array << "fizz"
		else
			fizz_buzz_array << add_counter
		end
		add_counter += 1
	end

	fizz_buzz_array

end