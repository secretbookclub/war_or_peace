require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/player'
require './lib/deck'
require './lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
      # skip
    card_1 = Card.new(:heart, 'Jack', 11)
    card_2 = Card.new(:heart, '10', 10)
    card_3 = Card.new(:heart, '9', 9)
    card_4 = Card.new(:diamond, 'Jack', 11)
    card_5 = Card.new(:heart, '8', 8)
    card_6 = Card.new(:diamond, 'Queen', 12)
    card_7 = Card.new(:heart, '3', 3)
    card_8 = Card.new(:diamond, '2', 2)

    deck_1 = Deck.new([card_1, card_2, card_5, card_8])
    deck_2 = Deck.new([card_3, card_4, card_6, card_7])

    player_1 = Player.new('Nero', deck_1)
    player_2 = Player.new('Sandy', deck_2)

    turn = Turn.new(player_1, player_2, [card_1, card_2])

    assert_instance_of Turn, turn
  end

  def test_it_can_read_type_of_turn
    # skip
    card_1 = Card.new(:heart, 'Jack', 11)
    card_2 = Card.new(:heart, '10', 10)
    card_3 = Card.new(:heart, '9', 9)
    card_4 = Card.new(:diamond, 'Jack', 11)
    card_5 = Card.new(:heart, '8', 8)
    card_6 = Card.new(:diamond, 'Queen', 12)
    card_7 = Card.new(:heart, '3', 3)
    card_8 = Card.new(:diamond, '2', 2)

    deck_1 = Deck.new([card_1, card_2, card_5, card_8])
    deck_2 = Deck.new([card_3, card_4, card_6, card_7])

    player_1 = Player.new('Nero', deck_1)
    player_2 = Player.new('Sandy', deck_2)

    turn = Turn.new(player_1, player_2, [card_1, card_2])

    assert_equal :basic, turn.type
  end
end
