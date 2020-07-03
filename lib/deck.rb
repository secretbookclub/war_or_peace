# require './lib/card'

class Card
  attr_reader :suit, :rank, :value

  def initialize(suit = :suit, rank = 'Rank', value = 0)
    @suit = suit
    @rank = rank
    @value = value
  end
end

class Deck
  attr_reader :deck, :card #gives access to the instance variables outside of the class

  def initialize(deck, card) #argument
    @deck = deck #instance variable, then argument
    @card = card
  end

  def add_card

  end

  # def rank_of_cards_at

  # end

  # def high_ranking_cards

  # end

  # def percent_high_ranking

  # end

  # def add_card(card)
  #   @card << card
  # end
  #
  # def remove_card()
  #   # @card << new_card
  # end

end
