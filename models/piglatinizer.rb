class PigLatinizer

  attr_accessor :words, :result

  @@all = []

  def initialize
    @@all << self
  end

  def piglatinize(string)
      a = string.split(" ")
      b = a.map {|word| piglatinize_word(word)}
      b.join(" ")
  end

  def piglatinize_word(word)
    word2 = word.downcase
    if first_vowel_index(word2) == 0
        # piglatinize word that starts with a vowel
        word = word+"way"
    else
        # piglatinize word that starts with a consonant group
        word = word[first_vowel_index(word2)..]+word[0..first_vowel_index(word2)-1]+"ay"
    end
    x = word
  end

  def first_vowel_index(word)
    i = 0
    vowels = ['a','e','i','o','u']
    first_vowel_index = word.split("").each do |letter|
      if vowels.include?(letter)
        return i
      end
      i+=1
    end
  end

  def self.all
    @@all
  end

end
