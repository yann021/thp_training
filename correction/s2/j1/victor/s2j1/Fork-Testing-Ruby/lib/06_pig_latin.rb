
#Create the array
Vowels = ["a", "e", "i", "o", "u"]

#define function vowel to become the variable letter
def letter_is_vowel(letter)
	Vowels.include?(letter) 
end

#define function first letters with .split
def first_letters(word)
	letters = word.split("")
    prev_letter = ""
    
    #define the array consonnant
    starting_consonant = []
    
    #loop to check if it's a each letter is a vowel
	letters.each do |letter|
		if letter_is_vowel(letter) && (letter != "u" && prev_letter != "q")
			break
        else
    #put letter in array starting_consonant
			starting_consonant << letter
			prev_letter = letter 
		end
    end
    

	starting_consonant.join
end


def make_pig_word(word)
  starting_consonants = first_letters(word)
  num = starting_consonants.size
  remaining_word = word[num, word.length - num]
  new_word = remaining_word + starting_consonants + "ay"
  new_word
end

def translate(sentence)
  pigged_words = sentence.split.map { |word| make_pig_word(word)}
  pigged_words.join(" ")
end