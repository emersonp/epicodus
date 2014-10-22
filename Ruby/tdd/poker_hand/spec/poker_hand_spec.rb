require('rspec')
require('poker_hand')

describe('poker_hand') do
	it("returns 'High Card' when given AC, 2C, 4D, 5S, 8H") do
		expect(poker_hand(["AC", "2C", "4D", "5S", "8H"])).to eq('High Card')
	end
	it("returns 'Pair' when given AC, AD, 4D, 5S, 8H") do
		expect(poker_hand(["AC", "AC", "4D", "5S", "8H"])).to eq('Pair')
	end
	it("returns 'Three of a Kind' when given AC, AD, AS, 5S, 8H") do
		expect(poker_hand(["AC", "AC", "AS", "5S", "8H"])).to eq('Three of a Kind')
	end
	it("returns 'Two Pair' when given AC, AD, 4D, 4S, 8H") do
		expect(poker_hand(["AC", "AC", "4D", "4S", "8H"])).to eq('Two Pair')
	end
	it("returns 'Straight' when given 5C, 4D, 6D, 7S, 8H") do
		expect(poker_hand(["5C", "4D", "6D", "7S", "8H"])).to eq('Straight')
	end
	it("returns 'Flush' when given AC, QC, 9C, 7C, 4C") do
		expect(poker_hand(["AC", "QC", "9C", "7C", "4C"])).to eq('Flush')
	end
end