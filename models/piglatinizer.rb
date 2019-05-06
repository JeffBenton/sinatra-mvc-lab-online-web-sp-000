class PigLatinizer
  attr_accessor :str
  
  def initialize(str)
    @str = str
  end
  
  def to_piglatin
    words = @str.split(" ")
    words.collect do |word|
      latinize_word(word)
    end.join(" ")
  end
  
  def latinize_word(word)
    vowels = ["a", "e", "i", "o", "u", "y"]
    if vowels.include?(word[0])
      return "#{word}ay"
    end
    "#{word[1, word.length-1]}#{word[0].downcase}ay"
  end
end