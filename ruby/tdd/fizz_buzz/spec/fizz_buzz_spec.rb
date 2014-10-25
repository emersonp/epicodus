require('rspec')
require('fizz_buzz')

describe('fizz_buzz') do
	it("returns numbers up to 2 in an array") do
    	expect(fizz_buzz(2)).to eq([1, 2])
  	end
  	it("replaces multiples of 3 with 'fizz'") do
  		expect(fizz_buzz(3)).to eq([1, 2, 'fizz'])
  	end
  	it("replaces multiples of 5 with 'buzz'") do
  		expect(fizz_buzz(5)).to eq([1, 2, 'fizz', 4, 'buzz'])
  	end
  	it("replaces multiples of both 5 and 3 with 'fizzbuzz'") do
  		expect(fizz_buzz(15)).to eq([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz'])
  	end
end