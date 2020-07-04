require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

    # require "pry"; binding.pry

class DeckTest < Minitest::Test

  def test_it_exists
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_has_cards
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12) # symbol - practicing w/ diff data types
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards # references attr_reader method
    # whatever class you're in, reference class.method
  end

  def test_can_return_rank_of_card
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12) # symbol - practicing w/ diff data types
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])

    assert_equal 12, deck.rank_of_card_at(0) # argument, not array index
    assert_equal 14, deck.rank_of_card_at(2)
  end

  def test_can_determine_card_high_ranking
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])
# require "pry"; binding.pry
    assert_equal [card_1, card_3], deck.high_ranking_cards
    end

  def test_can_return_percent_high_ranking #utilize earlier method?
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 2/3r, deck.percent_high_ranking 
  end

  def test_can_add_a_card
      skip
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
end
