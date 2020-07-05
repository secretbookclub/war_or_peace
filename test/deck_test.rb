require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require 'pry'

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
    assert_equal [card_1, card_3], deck.high_ranking_cards
    end

  def test_can_return_percent_high_ranking #utilize earlier method?
    # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 66.67, deck.percent_high_ranking
  end

  def test_can_add_a_card
      # skip
    card_1 = Card.new(:diamond, 'Queen', 12)
    card_2 = Card.new(:spade, '3', 3)
    card_3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card_1, card_2, card_3])
    card_4 = Card.new(:club, '5', 5)
    # deck.add_card(card_4) #don't call method in test code, call in actual
    assert_equal [card_1, card_2, card_3, card_4], deck.add_card(card_4)
  end

    def test_can_remove_card
      # skip
      card_1 = Card.new(:diamond, 'Queen', 12)
      card_2 = Card.new(:spade, '3', 3)
      card_3 = Card.new(:heart, 'Ace', 14)

      deck = Deck.new([card_1, card_2, card_3])
      # binding.pry
      assert_equal [card_2,card_3], deck.remove_card # The line below worked earlier but
      # now doesn't I'm not sure what changed
      # And not sure if we should be returning the changed array or the removed card
      # assert_equal [card_2, card_3], deck.remove_card
    end
end
