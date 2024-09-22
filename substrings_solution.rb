def substrings(word, valid_substring_list)
  answer_hash = {}
  valid_substring_list.map do |substring|
    word.downcase.split.map do |wordz|
      #set default
      if wordz.downcase.include?(substring) 
        if answer_hash[substring.to_sym] == nil
          answer_hash[substring.to_sym] = 1 
        else
         answer_hash[substring.to_sym] += 1
        end
      end
    end
  end
  puts answer_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#CASE1
substrings("below", dictionary)
#CASE2
substrings("Howdy partner, sit down! How's it going?", dictionary)

