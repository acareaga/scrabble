require './lib/player'
require 'pry'

class Scrabble
  attr_reader :word, :name, :player_id

  def initialize
    @name = name
    @player_id = player_id
    puts "Alright #{name}, let's play! What is your guess:"
    word = gets.chomp
    score(word)
  end

  def score(word, total = 0)
    if word.nil? || word.class != String || word.include?(" ")
      total
    else
      combine_score(word, total)
    end
  end

  def combine_score(word, total)
    word.upcase.each_char { |letter|
      total += point_values.fetch(letter) }
    puts "Your score for '#{word.upcase}' is: #{total} points"
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
