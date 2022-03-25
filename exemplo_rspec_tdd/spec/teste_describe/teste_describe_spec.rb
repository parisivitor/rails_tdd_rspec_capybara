describe 'discription' do
  it 'String' do
    str = "vitor"
    expect(str.size).to eq(5)
  end
end

describe 'vitor' do
  it 'String' do
    expect(subject.size).to eq(5)
  end
end

describe [1,2] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end
