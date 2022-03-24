require 'calculator'

describe Calculator do
  it 'use sum method for 2 numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  specify 'use sum method for 2 numbers whith negative numbers' do
    calc = Calculator.new
    result = calc.sum(-5, -7)
    expect(result).to eq(-12)
  end
end
