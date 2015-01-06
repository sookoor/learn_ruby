def translate(words)
  vowels = ['a', 'e', 'i', 'o']
  punctuations = ['.', ',', '?', '!', "'"]
  word_list = words.split(' ')

  word_list.map! { |word|
    punctuation = ''
    if punctuations.include? word[-1]
      punctuation = word[-1]
      word = word[0..-2]
    end
    capitalized = word == word.capitalize
    while not vowels.include? word[0]
      word = word[1..-1] + word[0]
    end
    if capitalized
      word = word.capitalize
    end
    word + 'ay' + punctuation
  }
  word_list.join(' ')
end
