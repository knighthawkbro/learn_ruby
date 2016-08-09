#write your code here
def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, x = 2)
  ([message]*x).join ' '
end

def start_of_word(word, range)
  word[0,range]
end

def first_word(word)
  word.split.first
end

def titleize(word)
  little = ['and','the','of','be', 'over']
  word.split().map.with_index do |w,i|
    little.include?(w) && i > 0 ? w : w.capitalize
  end.join(' ')
end