
def substrings(input, dict)
  output = Hash.new(0)

  input_words = input.downcase.split(" ")
  
  input_words.each do |input_word|
    dict.each do |dict_word|
      if (input_word.include?(dict_word))
        output[dict_word] += 1
      end
    end
  end

  output.sort.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)