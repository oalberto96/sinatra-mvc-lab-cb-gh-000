class PigLatinizer

  def is_vowel?(letter)
    letter =~ /[AEIOUaeiou]/
  end

  def piglatinaze(text)
  end

  def translate_word(word)
    result = ""
    if is_vowel?(word[0])
      result = "#{word}way"
    else
      if is_vowel(word[1])
        result = "#{word.slice(1..-1)}#{word[0]}ay"
      else
        result = "#{word.slice(2..-1)}#{word[0]}ay"
      end
    end
  end
end
