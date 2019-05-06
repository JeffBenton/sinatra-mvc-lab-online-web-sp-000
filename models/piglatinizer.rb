class PigLatinizer
  def initialize
  end
  
  def piglatinize(str)
    words = str.split(" ")
    words.collect do |word|
      piglatinize_word(word)
    end.join(" ")
  end
  
  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u", "y"]
    if vowels.include?(word[0])
      return "#{word}ay"
    end
    "#{word[1, word.length-1]}#{word[0].downcase}ay"
  end
end