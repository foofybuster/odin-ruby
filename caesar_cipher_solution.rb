def get_step_index(string_range, char, shift_step)
  unless ind = string_range.find_index(char)
    char
  else
    ind + shift_step
  end
end

def caesar_cipher(input_string, shift_step)
  cap = input_string.split("").map do |char| 
    get_step_index(("A".."Z"), char, shift_step)
  end
  non_cap = input_string.split("").map do |char| 
    get_step_index(("a".."z"), char, shift_step)
  end
  merged = cap.zip(non_cap).map do |x, y|
    if x == y
      x
    else
      x.is_a?(Integer) ? ("A".."Z").compact[x % ("A".."Z").count] : ("a".."z").compact[y % ("a".."z").count]
    end
  end
  puts merged.join
end


caesar_cipher("What a string!", 5)
