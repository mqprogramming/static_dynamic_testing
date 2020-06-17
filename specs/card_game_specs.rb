require('minitest/autorun')
require('minitest/reporters')
require('pry-byebug')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../card')
require_relative('../card_game')

class CardGameTest < Minitest::Test

  def setup()

    @card1 = Card.new("Heart", 1)
    @card2 = Card.new("Heart", 2)
    @card3 = Card.new("Diamond", 5)

    @cards = [@card1, @card2, @card3]

    @card_game = CardGame.new(@cards)

  end

  def test_check_for_ace__true
    assert_equal(true, @card_game.checkforAce(@card1))
  end

  def test_check_for_ace__false
    assert_equal(false, @card_game.checkforAce(@card2))
  end

  def test_highest_card
    assert_equal(@card3, @card_game.highest_card(@card2, @card3))

  end

  def test_cards_total
    total_of_cards = CardGame.cards_total(@cards)
    assert_equal("You have a total of 8", total_of_cards)
  end

end
