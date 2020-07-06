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
    deck_1 = Deck.new([card_1, card_2, card_3])
    player_1 = Player.new(deck, 'Nero')

    assert_instance_of Player, player_1
  end

  def test_determine_player_has_lost
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck_1 = Deck.new([card_1, card_2, card_3])
    player_1 = Player.new(deck, 'Nero')

    assert_equal false, player_1.has_lost?
  end

  def test_determine_player_has_lost_part_2
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck_1 = Deck.new([card_1, card_2, card_3])
    player_1 = Player.new(deck_1, 'Nero')
    # binding.pry

    deck.remove_card
    deck.remove_card
    deck.remove_card #change deck to deck_1

    assert_equal true, player_1.has_lost?
  end
end
