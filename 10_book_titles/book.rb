class Book
  
  attr_reader :title
  
  def title=(t)
    parts = []
    t.split.each_with_index do |word, i|
      if i == 0 || word =~ /^i$/i
	word.capitalize!
      else
	word.length > 3 ? word.capitalize! : word
      end
      parts << word
    end
    @title = parts.join(' ')
  end

end