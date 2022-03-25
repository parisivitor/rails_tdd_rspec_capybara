require 'pessoa'

describe 'Atributos' do
  # HOOKS
  # before(:each) do
  #   puts 'ANTES'
  #   @pessoa = Pessoa.new
  # end
  # /HOOKS
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = "vitor"
    pessoa.idade = 26
    expect(pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end

  it 'have_attributes' do
    pessoa.nome = "vitera"
    pessoa.idade = 27
    expect(pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end
end

describe 'Teste' do
  it 'have_attributes_teste' do
    pessoa = Pessoa.new
    pessoa.nome = "vitor"
    pessoa.idade = 26
    expect(pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end
end
