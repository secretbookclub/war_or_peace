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

  def pile_cards
    if type == :basic
      @spoils_of_war << player_1.deck.cards[0]
      @spoils_of_war << player_2.deck.cards[0]
    elsif type == :war
      @spoils_of_war << player_1.deck.cards[0, 1, 2]
      @spoils_of_war << player_2.deck.cards[0, 1, 2]
    elsif type == :mutually_assured_destruction
      player_1.deck.cards.drop(3)
    end
  end

  def award_spoils(winner)
    if player_1 == winner
    player_1.deck.cards << @spoils_of_war
    elsif player_2 == winner
    player_2.deck.cards << @spoils_of_war
    end
  end
end
