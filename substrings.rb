dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(full_string, dictionary)
  tally_of_results = {}

  dictionary.each do |current_string|
    number = full_string.scan(current_string).length
    if number>0  
      tally_of_results[current_string] = number
    end
  end
  tally_of_results
end
  
puts "What word or phrase would you like me to evaluate?"
full_string = gets.chomp.downcase

p substrings(full_string, dictionary) # print resulting hash