def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, *count)
  out_str = string + " " + string
  if count.length > 0
    repeat = count[0] - 2
    repeat.times do 
      out_str += " " + string
    end
  end
  out_str
end

def start_of_word(word, i)
  ret = ""
  for i in 0..i - 1
    ret += word[i]
  end
  ret
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  little_words = ['and', 'the', 'over']
  split_string = string.split(' ')

  split_string[0].capitalize!

  for i in 1..split_string.length - 1
    if not little_words.include? split_string[i]
      split_string[i].capitalize!
    end
  end

  split_string.join(' ')
end
