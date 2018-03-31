def translate(string)
	n = 0
	first_word = true
	sentence = ""
	while n < string.length
		if !first_word
			sentence += " "
		end
		word = ""
		consonants = ""
		while n < string.length && string[n] != " "
			word += string[n]
			n += 1
		end
		if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u" || word[0] == "y"
			word += "ay"
		else
			while word[0] != "a" && word[0] != "e" && word[0] != "i" && word[0] != "o" && word[0] != "u" && word[0] != "y"
				if word[0] == "q" && word[1] == "u"
					consonants += word[0]
					consonants += word[1]
					word[0] = ""
					word[0] = ""
				else
				consonants += word[0]
				word[0] = ""
				end
			end
			word += consonants
			word += "ay"
		end
		sentence += word
		n += 1
		first_word = false
	end
	return sentence
end
