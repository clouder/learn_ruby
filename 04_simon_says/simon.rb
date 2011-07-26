def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times = 2)
  ((text + ' ') * times).chop
end

def start_of_word(word, num)
  word[0..num-1]
end

def first_word(text)
  text.split[0]
end