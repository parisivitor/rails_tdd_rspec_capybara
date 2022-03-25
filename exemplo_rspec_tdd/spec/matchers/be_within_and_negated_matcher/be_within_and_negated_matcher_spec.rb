RSpec::Matchers.define_negated_matcher :be_not_within, :be_within #define o be_not_within como o contrario do be_within

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) } #0.5 pra mais ou ppra menos de 12
  it { expect(11.5).to be_within(0.5).of(12) }

  it { expect(11.4).to be_not_within(0.5).of(12) }
  it { expect(12.6).to be_not_within(0.5).of(12) }



  it{ expect([11.5, 12.5, 12.4]).to all (be_within(0.5).of(12) )}
end
