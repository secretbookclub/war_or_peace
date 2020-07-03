require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_it_exists
    # skip
    @deck = Deck.new(@card1, @card2) # 2 cards - argument for @deck variable
    #
    @card1 = Card.new(:diamonds, 'Queen', 12)
    @card2 = Card.new(:spades, 'King', 13)
    @cards = [@card1, @card2]
    assert_instance_of Deck, @deck
  end

  def test_it_has_cards
    # skip
    # @deck = Deck.new(@card1, @card2)
    # @card1 = Card.new(:diamonds, 'Queen', 12)
    # @card2 = Card.new(:spades, 'King', 13)
    # @cards = [@card1, @card2]
    assert_equal
  end

  def test_can_add_a_card
    skip
    @card5 = Card.new(:spades, 'Jack', 11)
    @cards2 = [@card1, @card2, @card3, @card4, @card5]
    @deck.add_card()
    assert_equal @deck.cards, @cards2
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
