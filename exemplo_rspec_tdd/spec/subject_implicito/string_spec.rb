require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it "nao esta vazia" do
      expect(subject).not_to eq('Nao sou vazio..')
    end
  end
end
