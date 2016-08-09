def append (arr, n)
	return arr if n < 0 

	arr << n
	append(arr, n - 1)
end

def reverse_append(arr, n)
	return arr if n < 0 || arr.length > n

	arr << arr.length
	reverse_append(arr, n)
end

ans = append [], 10
p ans

ans = reverse_append [], 10
p ans