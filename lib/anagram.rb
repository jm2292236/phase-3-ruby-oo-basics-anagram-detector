require 'pry'

# Your code goes here!
class Anagram
    def initialize word
        @word = word
    end

    def match words
        word_in_chars = @word.chars.sort

        # After converting each word to chars and sort the chars then filters only the words equals to the anagram
        result = words.filter {|word| word.chars.sort == word_in_chars}

        # Return an array with only the words that match
        result
    end
end

# TESTS ==========================
# game = Anagram.new("listen")
# game.match(["inlets", "banana", "television", "netlis"])

# game = Anagram.new("ba")
# game.match(["ab", "abc", "cba"])

