require('rspec')
require('roman')

describe('roman_numerals') do
	it('returns "I" when given "1"') do
		expect(roman_numerals(1)).to eq("I")
	end
	it('returns "II" when given "2"') do
		expect(roman_numerals(2)).to eq("II")
	end
	it('returns "IV" when given "4"') do
		expect(roman_numerals(4)).to eq("IV")
	end
	it('returns "VIII" when given "8"') do
		expect(roman_numerals(8)).to eq("VIII")
	end
	it('returns "IX" when given "9"') do
		expect(roman_numerals(9)).to eq("IX")
	end
	it('returns "X" when given "10"') do
		expect(roman_numerals(10)).to eq("X")
	end
	it('returns "XI" when given "11"') do
		expect(roman_numerals(11)).to eq("XI")
	end
	it('returns "XXXVII" when given "37"') do
		expect(roman_numerals(37)).to eq("XXXVII")
	end
	it('returns "XLVII" when given "47"') do
		expect(roman_numerals(47)).to eq("XLVII")
	end
	it('returns "LVII" when given "57"') do
		expect(roman_numerals(57)).to eq("LVII")
	end
	it('returns "LXXVII" when given "77"') do
		expect(roman_numerals(77)).to eq("LXXVII")
	end
	it('returns "XCVII" when given "97"') do
		expect(roman_numerals(97)).to eq("XCVII")
	end
	it('returns "CDVII" when given "407"') do
		expect(roman_numerals(407)).to eq("CDVII")
	end
	it('returns "MDVII" when given "1507"') do
		expect(roman_numerals(1507)).to eq("MDVII")
	end
	it('returns "MMMCMXCIX" when given "3999"') do
		expect(roman_numerals(3999)).to eq("MMMCMXCIX")
	end

end