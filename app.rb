def substrings(word, dictionary)

    require 'pry'
    # #Split word into individual letters
    letters = word.split('')

    #Create hash to store results
    results = Hash.new

    #Find the location of word in dictionary
    word_index = dictionary.index(word)
    puts "#{word} is at index: #{word_index} in dictionary"

    #Search for words containing "low"
    matches = dictionary.select {|string| string.include?('low')}
    puts "The following are substrings of #{word}: #{matches}"

    #Count number of times word is in dictionary
    substring_count = dictionary.count {|substring| substring.include?('below') }
    puts "#{word} is in dictionary #{substring_count} time"


end

substrings('below', ["below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit",])


    # Logic Notes

    # 5. search for match in dictionary and return match(es) idx
    # occurences = dictionary.select (or find) {|match, idx| dictionary.include?(match) p idx}

    # below occurs once --> below: 1 idx 0
    
    # low occurs once --> low: 1 idx 9

    # 6. turn matches w/ number of occurences into hash --> substrings = { below: 1, low: 1 }
    # combo_array = [matches && occurences] (nested arr)
    # combo_array.to_h or New.Hash(matches && occurences)
    

    
