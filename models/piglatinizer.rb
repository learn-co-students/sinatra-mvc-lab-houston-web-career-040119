

class PigLatinizer

  def piglatinize(input)
    words_arr = input.split(' ')
    new_arr = words_arr.map {|word| self.piglatinize_word(word)}
    new_arr.join(' ')
  end

  def piglatinize_word(word)
    original_str_arr = word.split('')
    letter_arr = word.split('')
    consonants = []

    original_str_arr.each do |letter|
      if ["a","e","i","o","u", 'A', 'E', 'I', 'O', 'U'].include?(original_str_arr.first)
        return original_str_arr.join + 'way'
      elsif !["a","e","i","o","u", 'A', 'E', 'I', 'O', 'U'].include?(letter)
        consonants << letter
        letter_arr.shift
      else
        return letter_arr.join + consonants.join + 'ay'
      end
    end
  end

end

# binding.pry
# 0
