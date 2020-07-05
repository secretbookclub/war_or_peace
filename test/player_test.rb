require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/deck'
require './lib/card'

class PlayerTest < Minitest::Test

  def test_it_exists
      # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card_1, card_2, card_3])
    player_1 = Player.new('Nero', deck)
    assert_instance_of Player, player_1
  end

  def test_it_can_determine_player_has_lost
        # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card_1, card_2, card_3])
    player_1 = Player.new('Nero', deck)

    3.times do
      player_1(deck).remove_card
    end

    assert_equal false, player1.has_lost?
  end

  def test_it_can_determine_player_has_not_lost
      skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card_1, card_2, card_3])
    player1 = Player.new('Nero', deck)

    assert_equal false, player1.has_lost?
  end
end
