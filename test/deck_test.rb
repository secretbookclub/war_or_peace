require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

    # require "pry"; binding.pry

class DeckTest < Minitest::Test

  def test_it_exists
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:diamond, 'Ace', 14)
    card_3 = Card.new(:club, '7', 7)
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_has_cards
    skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, 'Ace', 14)
    card_3 = Card.new(:club, '7', 7)

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal
  end

  def test_can_add_a_card
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, 'Ace', 14)
    card_3 = Card.new(:club, '7', 7)

    deck = Deck.new([card_1, card_2, card_3])
    card_4 = Card.new(:heart, 'King', 13)
    deck.add_card(card_4)

    assert_equal deck, [card_1, card_2, card_3, card_4]
  end

  def test_can_remove_card
    skip
  end

  def test_can_return_rank_of_card
    skip
  end

  def test_can_determine_card_high_ranking
    skip
  end

  def test_can_return_percent_high_ranking
    skip
  end
end
