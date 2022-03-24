require 'calculator'

describe Calculator, "Sobre a classe calculadora" do

  context '#div' do
    it 'divide by zero raise_exception' do
      expect{subject.div(3, 0)}.to raise_exception
    end
    it 'divide by zero raise_error' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_error('divided by 0')
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end

  context '#sum' do
    it 'whith positive numbers' do
      calc = Calculator.new
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'whith negative and positive numbers' do
      # calc = Calculator.new
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'whith negative numbers' do
      # calc = Calculator.new
      # result = subject.sum(-5, -7)
      expect(subject.sum(-5,-7)).to eq(-12)
    end

    xit 'pulando teste com xit' do
      # calc = Calculator.new
      # result = subject.sum(-5, -7)
      expect(subject.sum(-5,-7)).to eq(-12)
    end

    it 'sem o corpo do teste'
  end
end
