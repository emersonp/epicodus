require('rspec')
require('allergy_score')

describe('allergy_score') do
	it("returns 'eggs' if given a score of 1") do
		expect(allergy_score(1)).to eq(["eggs"])
	end
	it("returns 'eggs' and 'peanuts' if given a score of 3") do
		expect(allergy_score(3)).to eq(["peanuts", "eggs"])
	end
	it("returns 'eggs' and 'strawberries' if given a score of 9") do
		expect(allergy_score(9)).to eq(["strawberries", "eggs"])
	end
	it("returns 'peanuts', 'tomatoes' and 'cats' if given a score of 146") do
		expect(allergy_score(146)).to eq(["cats", "tomatoes", "peanuts"])
	end
end
