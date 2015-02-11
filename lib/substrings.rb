

def substrings(original_string, dictionary)

  return {} if dictionary.empty?

  found_list = dictionary.inject(0) do |found_word, word|
    if original_string.include?(word)

#ARGH      found_word[word] = original_string.count(word)
    end
  end
end
