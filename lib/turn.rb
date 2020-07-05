require 'pry'
require './lib/player'

class Turn
  attr_reader :player_1, :player_2, :spoils_of_war

  def initialize(player_1, player_2, spoils_of_war)
    @player_1 = player_1
    @player_2 = player_2
    @spoils_of_war = []
  end

  def type
    [player_1, player_2].each do |player|
      player.remove_card
    if xyz
      :basic
    end
  end

  end
end
