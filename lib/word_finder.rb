class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters)
    words.select do |word|
      can_build_word_from_letters?(word, letters)
    end
  end

  def can_build_word_from_letters?(word, letters)
    # [:all?, :any?, :one?, :none?, :member?, :include?]
    word.chars.all? do |char|
      letters.include?(char)
    end
    # word can be built from letters
  end
end
