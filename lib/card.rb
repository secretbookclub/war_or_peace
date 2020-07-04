class Card
  attr_reader :suit, :value, :rank

  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end
end

# an instance of the Card class has the attributes suit, rank, and value.
