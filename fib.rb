#returns first n letters of fibonacci sequence in an array
def fibs(n)
	fibs = []
	return fibs if n == 0
	a = 0
	fibs << a
	return fibs if n == 1
	b= 1

	(n - 1).times do
		fibs << b

		c = a + b
		a = b
		b = c
	end
	fibs
end

#takes an empty array, and fills it with the first n letters of fibonacci sequence
def fibs_rec(arr = [], n)	
	return arr if n ==  0

	fibs_rec(arr, n - 1)

	if n == 1
		arr << 0
	elsif n == 2
		arr << 1
	else
		arr << arr[-1] + arr[-2]
	end
end

p fibs 15
p fibs_rec 15