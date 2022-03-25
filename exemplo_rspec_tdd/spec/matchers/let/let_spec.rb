$counter = 0

describe 'let' do
  let(:count) { $counter += 1 } #let é chamado apenas quando é utilizado pelo teste
  # let!(:count) { $counter += 1 } #let! é chamado antes do teste

  it 'memoriza o valor' do
    expect(count).to eq(1) #1a vez é carregado
    expect(count).to eq(1) #2a fica em Cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) #1a vez desse teste
  end
end
