gem 'minitest'
require './lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test

  def test_for_letters_returns_all_words_in_the_dictionary_for_words_where_all_its_letters_are_in_the_given_array
    finder = WordFinder.new
    assert_equal ["a", "aa"], finder.for_letters(["a"])
    assert_equal ["a", "aa", "at", "atta", "t", "ta", "taa", "tat", "tatta"], finder.for_letters(["a", "t"])
    assert_equal 461, finder.for_letters(["r", "e", "x", "a", "p", "t", "o"]).count
  end
end
