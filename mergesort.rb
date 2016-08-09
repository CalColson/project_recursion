def merge_sort(arr)
	return arr if arr.length == 1

	left = arr.slice!(0..(arr.length - 1) / 2)

	left = merge_sort(left)
	arr = merge_sort(arr)

	merge(left, arr)
end

private
def merge(left, right)
	l_index = 0
	r_index = 0

	merge = []

	until l_index == left.length || r_index == right.length 
		l_val = left[l_index]
		r_val = right[r_index]

		if l_val < r_val
			merge << l_val
			l_index += 1
		else
			merge << r_val
			r_index += 1
		end
	end

	merge += (l_index == left.length ? right[r_index..-1] : left[l_index..-1])
end


random_array = []
15.times {random_array << rand(10)}

p random_array
puts;puts;puts
p merge_sort(random_array)
