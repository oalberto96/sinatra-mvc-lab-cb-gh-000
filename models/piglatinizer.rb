class PigLatinizer

  def is_vowel?(letter)
    letter =~ /[AEIOUaeiou]/
  end

  def piglatinaze(text)
    piglatinazed = []
    words = text.split(" ")
    words.each do |word|
      piglatinazed << translate_word(word)
    end
    piglatinazed.join(" ")
  end

  def translate_word(word)
    result = ""
    if is_vowel?(word[0])
      result = "#{word}way"
    else
      if is_vowel(word[1])
        result = "#{word.slice(1..-1)}#{word[0]}ay"
      else
        result = "#{word.slice(2..-1)}#{word.slice(0..1)}ay"
      end
    end
    result
  end
end
