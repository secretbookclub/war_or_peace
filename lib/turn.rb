require 'pry'
require './lib/player'

class Turn
  attr_reader :player1, :player2

  def initialize(player1, player2)
    
