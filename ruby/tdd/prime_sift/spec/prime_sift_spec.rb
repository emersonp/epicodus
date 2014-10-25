require('rspec')
require('prime_sift')

describe('prime_sift') do
	it('returns [] when given "1"') do
		expect(prime_sift(1)).to eq([])
	end
	it('returns [2] when given "2"') do
		expect(prime_sift(2)).to eq([2])
	end
	it('returns [2, 3] when given "4"') do
		expect(prime_sift(4)).to eq([2, 3])
	end
	it('returns [2, 3, 5, 7, 11, 13, 17, 19] when given "20"') do
		expect(prime_sift(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19])
	end
end