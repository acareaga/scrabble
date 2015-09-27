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
    game = Scrabble.new.score("Misssippi")
    assert_equal 15, game
  end

  def test_score_returns_zero_for_integers
    game = Scrabble.new.score(12345)
    assert_equal 0, game
  end

  def test_it_does_not_score_multiple_words
    game = Scrabble.new.score("hello world")
    assert_equal 0, game
  end

  def test_string_with_invalid_characters
    skip
    game = Scrabble.new.score("1milliondollar$")
    assert_equal 0, game
  end
end
