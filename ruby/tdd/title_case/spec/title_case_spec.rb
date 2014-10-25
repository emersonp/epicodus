require('rspec')
require('title_case')

describe('title_case') do
	it("capitalizes the first letter of a word") do
    	expect(title_case("frank")).to eq("Frank")
  	end
  	it("only capitalizes the first letter of a word") do
  		expect(title_case("FRANK")).to eq("Frank")
  	end
  	it("capitalizes the first letter of each word") do
  		expect(title_case("Frank WOOD")).to eq("Frank Wood")
  	end
  	it("capitalizes the first letter of each word and keeps punctuation") do
  		expect(title_case("WELCOME TO THE JUNGLE.")).to eq("Welcome To The Jungle.")
  	end
end