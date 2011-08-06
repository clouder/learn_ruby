class Fixnum

  SMALLS = [''] + %w{ one two three four five six seven eight nine
		     ten eleven twelve thirteen fourteen fifteen sixteen
		     seventeen eighteen nineteen }
  TENS = ['', ''] + %w{ twenty thirty forty fifty sixty seventy eighty
			  ninety }
  BIGS = [''] + %w{ thousand million billion trillion }

  def in_words()
    return 'zero' if self == 0
    parts = []

    self.to_s.reverse.split('').each_slice(3) do |e|
      parts << e.reverse.join
    end

    parts.each_with_index do |e, i|
      huns = e.to_i / 100
      tens = e.to_i % 100 / 10
      ones = e.to_i % 10
      parts[i] = huns > 0 ? "#{SMALLS[huns]} hundred " : ''
      if tens > 1
	parts[i] += "#{TENS[tens]}"
	parts[i] += " #{SMALLS[ones]}" if ones > 0
      else
	parts[i] += SMALLS[tens * 10 + ones]
      end
      parts[i] += " #{BIGS[i]}" if e.to_i > 0
    end
    parts.delete('')
    parts.reverse.join(' ').gsub(/\s+$/, '')
  end

end