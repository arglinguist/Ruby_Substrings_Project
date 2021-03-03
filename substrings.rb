dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(full_string, dictionary)
  result = {}
  dictionary.each do |current_string|
    number = check_for_string(full_string, current_string)
    if number == 0
    else 
      result[current_string] = number #adds final result as value to the hash with current string as key
    end
  end
  return result
end

def check_for_string(full_string, target_string)
  counter = 0
  sample_string = "" + full_string #to prevent original string from being damaged by the bang method
  while sample_string.include?(target_string)
    counter += 1
    sample_string.sub!("#{target_string}", "")
    #removes first instance of it, to search for additional instances throughout string
  end 
  return counter
end
  
puts "What word or phrase would you like me to evaluate?"
full_string = gets.chomp.downcase

p substrings(full_string, dictionary) # print resulting hash