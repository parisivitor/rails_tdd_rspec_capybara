require 'pessoa'

describe 'Atributos' do
  # HOOKS
  # before(:context) do
  #   puts '>>>>>>>>>>>>>>>>>(context) ANTES de TODOS os testes'
  # end
  # before(:all) do
  #   puts '>>>>>>>>>>>>>>>>>(all) ANTES de TODOS os testes'
  # end


  # before(:each) do
  #   puts 'ANTES'
  #   @pessoa = Pessoa.new
  # end
  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS  >>>>>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts 'ANTES'
    @pessoa = Pessoa.new

    teste.run  #dispara o teste

    puts "DEPOIS  >>>>>>>>> #{@pessoa.inspect}"
    @pessoa.nome = "Sem nome!"
  end

  # after(:context) do
  #   puts '>>>>>>>>>>>>>>>>>(context) DEPOIS de TODOS os testes'
  # end
  # after(:all) do
  #   puts '>>>>>>>>>>>>>>>>>(all) DEPOIS de TODOS os testes'
  # end
  # /HOOKS

  it 'have_attributes' do
    @pessoa.nome = "vitor"
    @pessoa.idade = 26
    expect(@pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end

  it 'have_attributes' do
    @pessoa.nome = "vitera"
    @pessoa.idade = 27
    expect(@pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end
end

describe 'Teste' do
  it 'have_attributes_teste' do
    @pessoa = Pessoa.new
    @pessoa.nome = "vitor"
    @pessoa.idade = 26
    expect(@pessoa).to have_attributes(nome: starting_with("v"), idade: (be >= 26) )
  end
end
