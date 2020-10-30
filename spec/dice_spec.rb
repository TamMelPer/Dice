require 'dice'

describe Dice do
# User Story 1 - I want to be able to roll a dice
  it 'creates an instance of dice' do
    expect(subject).to be_instance_of Dice
  end

# User Story 2 - Rolling a dice, should return a number between 1-6
# User Story 3 - I want the dice roll to be randomly picked
    # it 'returns a random number between 1-6' do
    #   expect(subject.roll). to be_between(1, 6)
    # end

# User Story 4 - I want to be able to roll any number of dice
  it "responds to a roll with one argument" do
    expect(subject).to respond_to(:roll).with(1).argument
  end
  # it "give the right number of result" do
  #   expect(subject.roll(7)).to eq 7
  # end


# User Story 5 - To keep track, I want to record each dice roll
  it "give all the results between 1 and 6 for the number of rolls" do
    expect(subject.roll(10)).to all( be_between(1,6) )
  end

# User Story 6 - I want to be able to get my current score
  it "gives a total of all the rolled dice" do
    expect(subject.total([1, 2, 3])).to eq(6)
  end




end
