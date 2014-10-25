require('rspec')
require('calc_word')

describe('calc_word') do
  it('Answers "What is 5 plus 3" with 8') do
    expect(calc_word("What is 5 plus 3")).to eq(8)
  end
  it('Answers "What is 5 minus 3" with 2') do
    expect(calc_word("What is 5 minus 3")).to eq(2)
  end
  it('Answers "What is 5 times 3" with 15') do
    expect(calc_word("What is 5 times 3")).to eq(15)
  end
  it('Answers "What is 6 divided by 3" with 2') do
    expect(calc_word("What is 6 divided by 3")).to eq(2)
  end
  it('Answers "What is 5 divided by 2" with 2.5') do
    expect(calc_word("What is 5 divided by 2")).to eq(2.5)
  end
  it('Answers "What is 5 to the 2nd power" with 25') do
    expect(calc_word("What is 5 to the 2nd power")).to eq(25)
  end
  it('Answers "What is 5 plus 2 minus 3" with 4') do
    expect(calc_word("What is 5 plus 2 minus 3")).to eq(4)
  end
end
