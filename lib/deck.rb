require 'pry'
require './lib/card'

class Deck
  attr_reader :cards #gives access to the instance variables outside of the class

  def initialize(cards) #argument
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    high_rank_cards = []
        @cards.each do |card|
          if card.rank >= 11
            high_rank_cards << card
          end
        end
    return high_rank_cards # tried this between conditional end and .each end, w
    #which didn't work
  end

  def percent_high_ranking
    percent_high_rank = high_ranking_cards.length
    ((percent_high_rank / @cards.length.to_f) * 100).round(2)
  end

  def add_card(new_card)
    @cards << new_card
  end

  def remove_card
    @cards.shift
  end
end
