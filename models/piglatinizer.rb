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
    end
  end
end
