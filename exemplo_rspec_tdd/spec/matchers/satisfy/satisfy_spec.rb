describe 'satify' do
  it{ expect(10).to be_even }
  it{ expect(10).to satisfy { |x| x % 2 == 0 }}
  it{ expect(10).to satisfy('be a even') { |x| x % 2 == 0 }}

  it{ expect(9).to satisfy { |x| x % 3 == 0 }}
  it{
      expect(9).to satisfy('be a multiple of 3') do |x|
        x % 3 == 0
      end
    }
end
