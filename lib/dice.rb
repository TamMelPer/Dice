class Dice
  def roll(n = 1)
    n.times {rand(1..6)}
  end
end
