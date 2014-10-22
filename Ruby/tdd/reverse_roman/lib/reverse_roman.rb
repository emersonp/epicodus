def reverse_roman(roman_string)
	modern_num = 0
	while_counter = 0

	print roman_string + ":\t"

	while roman_string != "" && while_counter < 100
		if roman_string[0] == "M"		then modern_num += 1000;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "CM"	then modern_num += 900;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "D"		then modern_num += 500;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "CD"	then modern_num += 400;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "C"		then modern_num += 100;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "XC"	then modern_num += 90;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "L"		then modern_num += 50;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "XL"	then modern_num += 40;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "X"		then modern_num += 10;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "IX"	then modern_num += 9;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "V"		then modern_num += 5;	roman_string[0] = "";		next;	end
		if roman_string[0..1] == "IV"	then modern_num += 4;	roman_string[0..1] = "";	next;	end
		if roman_string[0] == "I"		then modern_num += 1;	roman_string[0] = "";		next;	end
		while_counter += 1
	end

	if while_counter == 100 then puts "ERROR: Infinite Loop" end
	puts modern_num
	modern_num
end