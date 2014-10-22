def roman_numerals(number)
	romanNum = ""
	print number.to_s + ": "
	
	while number > 0
		
		if number > 999 then romanNum += "M";	number -= 1000;	next;	end
		if number > 899 then romanNum += "CM";	number -= 900;	next;	end
		if number > 499 then romanNum += "D";	number -= 500;	next;	end
		if number > 399 then romanNum += "CD";	number -= 400;	next;	end
		if number > 99 then romanNum += "C";	number -= 100;	next;	end
		if number > 89 then romanNum += "XC";	number -= 90;	next;	end
		if number > 49 then romanNum += "L";	number -= 50;	next;	end
		if number > 39 then romanNum += "XL";	number -= 40;	next;	end
		if number > 9  then romanNum += "X";	number -= 10;	next;	end
		if number > 8  then romanNum += "IX";	number -= 9;	next;	end
		if number > 4  then romanNum += "V";	number -= 5;	next;	end
		if number > 3  then romanNum += "IV";	number -= 4;	next;	end
		if number > 0  then romanNum += "I";	number -= 1;	next;	end
	end
	puts romanNum
	romanNum
end