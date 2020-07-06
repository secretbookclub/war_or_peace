require './lib/deck'
require 'pry'

class Player
  attr_reader :deck, :name

  def initialize(deck, name)
    @deck = deck
    @name = name
  end

  def has_lost? # ? tells Ruby we want a Boolean - so we don't need a conditional
    deck.cards == [] # calling the deck attribute, and calling the cards method
  end
end
