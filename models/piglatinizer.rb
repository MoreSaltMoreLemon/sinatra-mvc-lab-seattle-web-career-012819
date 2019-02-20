require 'pry'
class PigLatinizer
  
  def piglatinize(text)
    words = text.split(" ")
    latinized = piglatinized = words.map do |word|
      iglay(word)
    end
    # binding.pry
    latinized.join(" ")
  end

  def iglay(text)
    # binding.pry
    if text =~ (/\A[aeiou]+.*/i)
      "#{text}way"
    else
      split = text.match(/([^aeiou]+)([a-z]*)/i)
      "#{split[2]}#{split[1]}ay"
    end
  end
end