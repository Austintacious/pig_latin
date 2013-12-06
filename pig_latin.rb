class PigLatinTranslation
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def translate
    finish = []
    words.each do |word|
      if starts_with_vowel?(word)
        finish << word + "way"
      else
        consonants = []
        split_word = word.split("")
        until starts_with_vowel?(split_word.flatten.join(""))
          consonants << split_word.shift
        end
        split_word << consonants
        split_word << "ay"
        finish << split_word.flatten.join("")
      end
    end
    finish.join(" ")
  end

  private

  def words
    words = []
    words = @phrase.split(" ")
  end

  def starts_with_vowel?(word)
    word =~ /\A[aeiou]/
  end

end