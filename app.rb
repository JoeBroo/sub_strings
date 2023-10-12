def substrings(word, dictionary)

    #Create array to track substrings in dictionary
    matches = []
    word.downcase!

    #Store letters of word into letters array 
    letters = word.split('')

    p letters

    #Look at each string in dictionary for substrings of word
    #Store matches into matches array
    dictionary.each do |string|

        #Take dictionary word and split into individual letters
        string_letters = string.split('')
        p string_letters

        #Read through each of string's letters
        #If word includes dictionary word: store into matches array

            if word.include?(string)
                matches.push(string)
                puts "Test returns: #{string}"
            end
        end

    #Count the number of matches and store in match count
    match_count = matches.count 
    puts "There are: #{match_count} matches"

    #Create hash to store substrings
    hash = {}

    #Store each match as key in hash
    hash = matches.each.tally do |match|
        hash[match]
    end

    #Store result as value in hash
    p hash

    

end

# how should return  2  
# it should return  2 
# i should return  3
# substrings('below', ["below","down","go","going","horn","how","howdy","it","i",
#     "low","own","part","partner","sit"])

substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"] )

   