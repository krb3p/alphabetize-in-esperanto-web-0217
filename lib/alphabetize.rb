require 'pry'

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
# "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |a|
    a.split("").map do |char|
      binding.pry
      ESPERANTO_ALPHABET.index(char)
    end
  end
end


def alphabetize(array)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  x = alphabet.split("")
  k = array
  z = k
  new_array = []
  i = 0
  while k == z
    z = array.sort_by { |word| word[i]}
    i += 1
  end
    i -= 1
  x.each do |char|
    array.each do |word|
      if char == word[i]
        new_array << word
        array.delete(word)
      end
    end
  end
  new_array
end
