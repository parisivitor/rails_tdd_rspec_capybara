$counter = 0

describe 'let' do
  # let(:count) { $counter += 1 } #let é chamado apenas quando é utilizado pelo teste
  let!(:count) { $counter += 1 } #let! é chamado antes do teste

  it 'memoriza o valor' do # Carrega o cout 1a vez antes do teste
    expect(count).to eq(1) #Ultiliza o count q ja foi carregado anters do teste
    expect(count).to eq(1) #Ultiliza o count q ja foi carregado anters do teste
  end

  it 'não é cacheado entre os testes' do # Carrega o cout 1a vez antes do teste
    expect(count).to eq(2) #Ultiliza o count q ja foi carregado anters do teste
  end
end
