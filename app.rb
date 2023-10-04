def substrings(word, dictionary)

    #Create array to track substrings in dictionary
    matches = []

    word.downcase!

    #Store letters of word into letters array 
    letters = word.split('')

    p letters
    
    #Look through dictionary for strings containing 'l'
    #Store matches into matches array
    dictionary.each do |string|
        if string.include?('l')
            matches.push(string)
        end
    end
    p matches

    #Count the number of matches and store in match count
    match_count = matches.count 
    puts "There are: #{match_count} maches"

    #Create hash to store substrings
    hash = {}

    #Store each match as key in hash
    add_hash_key = matches.each do |match|
        hash[match]
    end

    #Count each num times hash key ia in dictionary
    #Store result as value in hash
    hash = add_hash_key.tally
    p hash


end

substrings('below', ["below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"])


    


    

    
