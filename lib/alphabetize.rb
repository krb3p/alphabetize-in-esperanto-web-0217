require 'pry'

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
# "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

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
