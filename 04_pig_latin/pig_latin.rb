#write your code here
def translate(word)
  word.split.map.with_index do |w,i|
    if /[aeiou]/.match(w[0])
      w += 'ay'
    elsif /[aeiou]/.match(w[1]) and w[0,2] != 'qu'
      w = w[1,w.length] + w[0] + 'ay'
    elsif /\w[^aeiou][aeiou]|(qu[aeiou])/.match(w[0,3]) and w[0,3] != 'squ'
      w = w[2,w.length] + w[0,2] + 'ay'
    else
      w = w[3,w.length] + w[0,3] + 'ay'
    end
  end.join(' ')
end