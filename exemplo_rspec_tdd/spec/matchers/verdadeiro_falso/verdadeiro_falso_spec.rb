describe 'Verdadeiro ou Falso' do
  it 'be true' do
    expect(1.odd?).to be true #odd? pergunta se é impart
  end

  it 'be_truthy' do
    expect(1.odd?).to be_truthy #odd? pergunta se é impart
  end

  it 'be false' do
    expect(1.even?).to be false #even? pergunta se é par
  end

  it 'be_falsey' do
    expect(1.even?).to be_falsey #odd? pergunta se é par
  end

  it 'be_nil' do
    expect(defined? x).to be_nil
  end
end
