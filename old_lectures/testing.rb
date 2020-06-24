# # Repeated Chars
# # ------------------------------------------------------------------------------
# # Define a method, #repeated_chars, that accepts a string as an argument. The method
# # should return an array of all the characters that appear multiple times consecutively.
# # If a single character is repeated on separate occasions, in should be included
# # multiple times in the result.

# # repeated_chars("mississippi") => ["s", "s, "p"]
# # ------------------------------------------------------------------------------
def repeated_chars(word)
    i = 0
    while i < word.length - 1
        if word[i] == word[i + 1]
            j = i + 2
            until word[j] != word[i]
                
            end
            next
        end
        i += 1
    end
end

# ------------------------------------------------------------------------------
puts "-------Repeated Chars-------"
puts repeated_chars("cat") == []
puts repeated_chars("caat") == ['a']
puts repeated_chars("applle") == ['p', 'l']
puts repeated_chars("caataapulllllt") == ['a', 'a', 'l']
# ------------------------------------------------------------------------------
