require 'pry'
require './lib/player'

class Turn
  attr_reader :player_1, :player_2, :spoils_of_war

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @spoils_of_war = [] # basic and war
  end

def type
  if player_1.deck.rank_of_card_at(0) != player_2.deck.rank_of_card_at(0)
    :basic
  elsif player_1.deck.rank_of_card_at(2) == player_2.rank_of_card_at(2) && player_1.deck.rank_of_card_at(0) == player_2.deck.rank_of_card_at(0) # order doesn't matter
    :mutually_assured_destruction
  elsif player_1.deck.rank_of_card_at(0) == player_2.deck.rank_of_card_at(0) # if this were second condition, MAD would not happen
    :war
  end
end

  # what happens in a turn?
  # Both players remove_card
  # conditional statement to tell which rank is higher
  # if one is higher, basic, 2 cards add to that player's array
  # if equal,

  # what previous method do you need to call?

  def winner
    if player_1.deck.rank_of_card_at(0) > player_2.deck.rank_of_card_at(0)
      @player_1
    elsif player_2.deck.rank_of_card_at(0) > player_1.deck.rank_of_card_at(0)
      @player_2
    elsif player_1.deck.rank_of_card_at(2) > player_2.deck.rank_of_card_at(2)
      @player_1
    elsif player_2.deck.rank_of_card_at(2) > player_1.deck.rank_of_card_at(2)
      @player_2
    elsif player_1.deck.rank_of_card_at(2) == player_2.rank_of_card_at(2) && player_1.deck.rank_of_card_at(0) == player_2.deck.rank_of_card_at(0)
      p "No winner"
    end
  end

  # def pile_cards
  # end

  # def award_spoils
  # end

end
