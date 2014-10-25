def nth_prime(input_number)
	prime_arr = [2]
	prime_check = 3

	while prime_arr.length < input_number  do
		penum_check = prime_check - 1
		prime_check_arr = (2..penum_check).to_a
		is_prime = true
		prime_check_arr.each do |check_number|
			if prime_check % check_number == 0 then is_prime = false end
		end
		if is_prime
			prime_arr << prime_check
		end
		prime_check += 1
	end

	prime_arr.last
end