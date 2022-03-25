RSpec::Matchers.define_negated_matcher :exclude, :include #define o exclude como o contrario do include

describe Array.new([1,2,3]), "Array" do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
    expect(subject).to exclude(0,5)
    expect(subject).to contain_exactly(1,2,3)
  end

  it{ expect(subject).to exclude(0,5) }

  it '#match_array' do
    expect(subject).to match_array([1,2,3])
  end
end
