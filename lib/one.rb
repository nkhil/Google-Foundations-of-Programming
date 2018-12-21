# Given a string S and a set of words D, 
# find the longest word in D that is a subsequence of S.

# Word W is a subsequence of S if some number of characters, 
# possibly zero, can be deleted from S to form W, without reordering the remaining characters.

# For example, given the input of S = "abppplee" and D = {"able", "ale", "apple", "bale", "kangaroo"} the correct output would be "apple"

class Array
  def longest
    longestElement = []
    self.each do |element|
	    longestElement = element if element.length > longestElement.length
    end
    longestElement
  end
end

module Subsequence
  def self.test(string, word)
    # (String, String) -> String
    # returns word if subsequent

    result = word.chars.map.with_index do |letter, i|
      if string.include? letter
        previous_letter = i != 0 ? word.chars[i - 1] : false
        if previous_letter
          current_letter_index = string.rindex(letter)
          previous_letter_index = string.index(word.chars[i - 1])
          letter if current_letter_index > previous_letter_index
        else
          letter
        end
      else
        break
      end
    end

    result.join if result
  end

  def self.all(string, words)
    # (String, Array) -> Array
    # returns an array of passing strings

    arr = []
    words.map { |word| 
      if self.test(string, word) == word
        arr << word
      end
    }
    arr
  end

  def self.longest(string, words)
    # (String, Array) -> String
    # returns longest subsequent string

    subsequents = words.map do |word|
      word if self.test(string, word)
    end

    subsequents.longest
  end
end