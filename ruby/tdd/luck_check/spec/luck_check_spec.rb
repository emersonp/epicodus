require('rspec')
require('luck_check')

describe('luck_check') do
  it('returns \'true\' if given \'11\'') do
    expect(luck_check("11")).to eq(true)
  end
  it('returns \'false\' if given a number with an odd number of digits') do
    expect(luck_check("111")).to eq(false)
  end
  it('returns \'false\' if given \'12\'') do
    expect(luck_check("12")).to eq(false)
  end
  it('returns \'true\' if given \'813372\'') do
    expect(luck_check("813372")).to eq(true)
  end
end
