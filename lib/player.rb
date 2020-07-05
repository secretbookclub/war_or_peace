require './lib/deck'
require 'pry'

class Player
  attr_reader :name, :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost? # ? tells Ruby we want a Boolean
    # binding.pry
    deck.cards == [] # calling the deck attribute, and calling the cards method
    # if !@cards.empty?
    # if deck(@cards) == []
  end
end
