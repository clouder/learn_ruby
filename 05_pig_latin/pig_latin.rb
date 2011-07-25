module PigLatinTranslator
  
  def translate(text)
    text.split.collect do |word|
      parts = word.partition(/^qu|[^aeiou]*/)
      if parts.first.empty?
	parts[2] + parts[1] + 'ay'
      else
	parts.join + 'ay'
      end
    end.join(' ')
  end
  
end