gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_multi_letter_word
    skip
    game = Scrabble.new
    game.score("a")
    assert_equal 1, game
  end

  def test_it_returns_zero_for_invalid_characters

  end
end
