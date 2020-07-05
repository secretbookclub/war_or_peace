require './lib/deck'
require 'pry'

class Player
  attr_reader :name, :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    if @deck[].count >= 1
  # if @cards[].count >= 1?
      true
    end
  end
end
