# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	sum = 0
	if arr.length == 0
		sum = 0
	else
		for i in 0 .. arr.length-1 do
			sum = sum + arr[i]
		end
	end
	return sum
end

def max_2_sum arr
  # YOUR CODE HERE
	sum = 0
	if arr.length == 0
		sum = 0
	elsif arr.length == 1
		sum = arr[0]
	else
		arr.sort!
		sum = arr[arr.length-1] + arr[arr.length-2]
	end
	return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	if arr.length <= 1
		return false
	else
		for i in 0 .. arr.length-1 do
			for j in i+1 .. arr.length-1 do
				if arr[i] + arr[j] == n
					return true
				end		#if sum is n
			end			#for j
		end				#for i
	end					#if array contains more than 1 element
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
	if s.length == 0
		check = false
	elsif s.match(/\A[aeiou]/i) || s.match(/\Ad/i)
		check = false
	else
		check = true
	end
	return check
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
