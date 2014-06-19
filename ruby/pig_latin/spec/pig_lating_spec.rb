require('rspec')
require('pig_latin')

describe('pig_latin') do
   	it("adds 'ay' to the end of words") do
    	expect(pig_latin('epicodus')).to eq('epicodusay')
	end
	it("moves a consonant at the beginning of a word to the end") do
    	expect(pig_latin('candy')).to eq('andycay')
  	end
end