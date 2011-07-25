class Fixnum
  
  ZERO_THRU_19 = %w{ zero one two three four five six seven eight nine
		     ten eleven twelve thirteen fourteen fifteen sixteen
		     seventeen eighteen nineteen }     
  TENS = [ '', '' ] + %w{ twenty thirty forty fifty sixty
			  seventy eighty ninety }
  
  def in_words(num=self)
    if num < 20
      ZERO_THRU_19[num]
    elsif num > 19 && num < 100
      "#{TENS[num / 10]} " + in_words(num % 10)
    elsif num > 99 && num < 1000
      "#{ZERO_THRU_19[num / 100]} hundred " + in_words(num % 100)
    elsif num > 999 && num < 1000000
      thousands = num / 1000
      if thousands < 20
	"#{ZERO_THRU_19[thousands]} thousand " + in_words(num % 1000)
      else
	"#{thousands.in_words} thousand " + in_words(num % 1000)
      end
    elsif num > 999999 && num < 1000000000
      millions = num / 1000000
      if millions < 20
	"#{ZERO_THRU_19[millions]} million " + in_words(num % 1000000)
      else
	"#{millions.in_words} million " + in_words(num % 1000000)
      end
    elsif num > 999999999 && num < 1000000000000
      value = num / 1000000000
      if value < 20
	"#{ZERO_THRU_19[value]} billion " + in_words(num % 1000000000)
      else
	"#{value.in_words} billion " + in_words(num % 1000000000)
      end
    elsif num > 999999999999
      value = num / 1000000000000
      if value < 20
	"#{ZERO_THRU_19[value]} trillion " + in_words(num % 1000000000000)
      else
	"#{value.in_words} trillion " + in_words(num % 1000000000000)
      end
    end.gsub(' zero', '')
  end
  
end