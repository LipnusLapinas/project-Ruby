def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, numb = 2)
	new_string = string
	n = 1
	while n < numb
		new_string += " "
		new_string += string
		n += 1
	end
	return new_string
end

def start_of_word(string, numb = 1)
	new_string = string[0]
	n = 1
	while n < numb
		new_string += string[n]
		n += 1
	end
	return new_string
end

def first_word(string)
	n = 0
	new_string = ""
	while string[n] != " "
		new_string += string[n]
		n += 1
	end
	return new_string
end

def titleize(string)
	new_string = ""
	n = 0
	first_word = true
	while n < string.length
		temp_string = ""
		if n > 1
			new_string += " "
		end
		while string[n] != " " && n < string.length
			temp_string += string[n]
			n += 1
		end
		if (temp_string != "and" && temp_string != "over" && temp_string != "the") || first_word
			new_string += temp_string[0].upcase
			m = 1
			first_word = false
			while m < temp_string.length
				new_string += temp_string[m]
				m += 1
			end
		else
			new_string += temp_string
		end
		n += 1
	end
	return new_string
end
