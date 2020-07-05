require './lib/deck'
require 'pry'

class Player
  attr_reader :name, :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost? # ? tells Ruby we want a Boolean - so we don't need a conditional
    deck.cards == [] # calling the deck attribute, and calling the cards method
  end
end
