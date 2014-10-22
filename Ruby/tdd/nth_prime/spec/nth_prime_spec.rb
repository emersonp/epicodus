require('rspec')
require('nth_prime')

describe('nth_prime') do
	it('returns "2" if given "1"') do
		expect(nth_prime(1)).to eq(2)
	end
	it('returns "3" if given "2"') do
		expect(nth_prime(2)).to eq(3)
	end
	it('returns "19" if given "8"') do
		expect(nth_prime(8)).to eq(19)
	end
end