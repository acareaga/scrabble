require 'pry'

class Player

  attr_reader :name, :player_id

  def initialize(name)
    @name = name
    player_name
  end

  def player_name
    puts "Hello, #{name}!"
    binding.pry
  end

  def player_id
    counter = 0
    player_id = counter + 1
  end
end

puts "Welcome to Scrabble. What is your name?"
Player.new(gets.chomp)
