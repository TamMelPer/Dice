class Dice
  def roll(n = 1)
    roll_history = []
    n.times { roll_history << rand(1..6)}
    return roll_history
  end

  def total(roll)
    roll.reduce(:+)
  end
end
