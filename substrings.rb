def substrings(phrase, dictionary)
    h = Hash.new
    for word in dictionary
        h[word] = 0
    end

    phrase_words = phrase.split(' ')

    for word in dictionary
        for palavra in phrase_words
            if palavra.downcase.include?(word)
                h.each do |key, value|
                    if key == word
                        value += 1
                        h[word] = value
                    end
                end
            end
        end
    end

    h.each do |key, value|
        if value == 0
            h.delete(key)
        end
    end

    return h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)