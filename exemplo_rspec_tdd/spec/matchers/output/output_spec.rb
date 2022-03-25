describe 'Matcher output' do
  it { expect{ puts'Vitor' }.to output.to_stdout }
  it { expect{ print'Vitor' }.to output('Vitor').to_stdout }
  it { expect{ puts'Vitor Parisi' }.to output(/Vitor/).to_stdout }

  it { expect{ warn'Vitor' }.to output.to_stderr}
  it { expect{ warn'Vitor' }.to output("Vitor\n").to_stderr}
  it { expect{ warn'Vitor Parisi' }.to output(/Vitor/).to_stderr}
end
