def add(numb1, numb2)
	return numb1 + numb2
end

def subtract(numb1, numb2)
	return numb1 - numb2
end

def sum(array)
	n = 0
	sum = 0
	while n < array.length
		sum += array[n]
		n += 1
	end
	return sum
end

def multiply(array)
	answer = array[0]
	n = 1
	while n < array.length
		answer *= array[n]
		n += 1
	end
	return answer
end

def power(x, n)
	return x ** n
end

def factorial(numb)
	answer = 1
	n = 2
	while n <= numb
		answer *= n
		n += 1
	end
	return answer
end
