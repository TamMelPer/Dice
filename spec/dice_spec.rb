require 'dice'

describe Dice do
  it 'creates an instance of dice' do
    expect(subject).to be_instance_of Dice
  end

  it "responds to a roll with one argument" do
    expect(subject).to respond_to(:roll).with(1).argument
  end

  it "give the right number of result" do
    expect(subject.roll(7)).to eq 7
  end

  it 'returns a reandom number between 1-6' do
    expect(subject.roll). to be_between(1, 6)
  end



end


#it { is_expected.to respond_to(:roll).with(1).argument }
