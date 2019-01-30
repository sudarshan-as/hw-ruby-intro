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
				else
					check = false
				end		#if sum is n
			end			#for j
		end				#for i
	end					#if array contains more than 1 element
	return check
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
	elsif s.match(/\A[b-df-hj-np-tv-z]/i)
		check = true
	else
		check = false
	end
	return check
end

def binary_multiple_of_4? s
  # To reject empty string and non-binary numbers (not 1 or 0)
	if s.length == 0 || s.match(/[^10]/)
		check = false
	else
		if s.match(/^[10]*[00]$/) || (s==0)
			check = true
		else
			check = false
		end
	end
	return check
end

# Part 3

class BookInStock
	# Creating a getter and setter for the variables
	attr_accessor :isbn, :price

	def initialize (isbn, price)
		#raise ArgumentError if isbn is an empty string
		unless isbn.length > 0
			raise ArgumentError.new("String is empty")
		end
		@isbn = isbn

		# raise ArgumentError if price<=0
		unless price > 0
			raise ArgumentError.new("Invalid price")
		end
		@price = price
	end

	def price_as_string
		# contains 2 digits after decimal point
		if (price.to_s.match(/^\d*\.\d{2}$/))		
			price_str = "$" + price.to_s
		# contains 1 digit after decimal point
		elsif (price.to_s.match(/^\d*\.\d$/))		
			price_str = "$" + price.to_s + "0"
		# Contains no decimal point
		else																		
			price_str = "$" + price.to_s + ".00"
		end
		return price_str
	end
end
