require './lib/card'

class Deck
  attr_reader :cards #gives access to the instance variables outside of the class

  def initialize(cards) #argument
    @cards = cards
  end

  def add_card(new_card)
    @cards << new_card
  end

  # def remove_card

  # def rank_of_card_at

  # end

  # def high_ranking_cards

  # end

  # def percent_high_ranking

  # end
end
