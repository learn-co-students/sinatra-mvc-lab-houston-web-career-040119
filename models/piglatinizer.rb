class PigLatinizer
  def initialize
  end

  def piglatinize_word(word)
    ending = word.match(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/)
    beginning = word.match(/[aeiouAEIOU][a-z]*\z/)
    if !ending
      if beginning
        beginning[0] + "way"
      else
        nil
      end
    else
      if beginning
        beginning[0] + ending[0] + "ay"
      else
        ending[0] + "ay"
      end
    end
  end

  def piglatinize(words)
    arr = words.split(" ")
    arr.map do |word|
      piglatinize_word(word)
    end.join(" ")
  end
end
