require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "vitor"
    pessoa.idade = 26
    expect(pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end
end
