require('rspec')
require('reverse_roman')

describe('reverse_roman') do
	it('returns "1" when given "I"') do
		expect(reverse_roman("I")).to eq(1)
	end
	it('returns "2" when given "II"') do
		expect(reverse_roman("II")).to eq(2)
	end
	it('returns "3" when given "III"') do
		expect(reverse_roman("III")).to eq(3)
	end
	it('returns "4" when given "IV"') do
		expect(reverse_roman("IV")).to eq(4)
	end
	it('returns "5" when given "V"') do
		expect(reverse_roman("V")).to eq(5)
	end
	it('returns "8" when given "VIII"') do
		expect(reverse_roman("VIII")).to eq(8)
	end
	it('returns "9" when given "IX"') do
		expect(reverse_roman("IX")).to eq(9)
	end
	it('returns "14" when given "XIV"') do
		expect(reverse_roman("XIV")).to eq(14)
	end
	it('returns "19" when given "XIX"') do
		expect(reverse_roman("XIX")).to eq(19)
	end
	it('returns "49" when given "XLIX"') do
		expect(reverse_roman("XLIX")).to eq(49)
	end
	it('returns "56" when given "LVI"') do
		expect(reverse_roman("LVI")).to eq(56)
	end
	it('returns "94" when given "XCIV"') do
		expect(reverse_roman("XCIV")).to eq(94)
	end
	it('returns "102" when given "CII"') do
		expect(reverse_roman("CII")).to eq(102)
	end
	it('returns "402" when given "CDII"') do
		expect(reverse_roman("CDII")).to eq(402)
	end
	it('returns "502" when given "DII"') do
		expect(reverse_roman("DII")).to eq(502)
	end
	it('returns "1012" when given "MXII"') do
		expect(reverse_roman("MXII")).to eq(1012)
	end

end