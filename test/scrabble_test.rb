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

  def test_it_can_score_multiple_letters
    assert_equal 15, Scrabble.new.score("Misssippi")
    assert_equal 41, Scrabble.new.score("QUIZZIFY")
  end

  def test_it_returns_zero_for_invalid_guess
    assert_equal 0, Scrabble.new.score(10)
    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score("hello world")
  end

  def test_invalid_characters_in_string
    skip
    assert_equal 0, Scrabble.new.score("1milliondollar$")
  end
end
