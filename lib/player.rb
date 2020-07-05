require './lib/deck'
require 'pry'

class Player
  attr_reader :name, :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    if deck.cards.empty?
  # if @cards[].count?
      true
    end
  end
end
