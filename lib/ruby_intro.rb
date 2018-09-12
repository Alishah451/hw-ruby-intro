# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |val|
  	sum += val
  end
  sum

end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
  	sum = 0
  elsif arr.length == 1
  	sum = arr[0]
  else
	largest = arr.min
	second_largest = arr.min

	arr.each do |val|
	 if val > largest
	  second_largest = largest
	  largest = val

	 elsif val > second_largest
	  second_largest = val
	 end
	end
	sum = largest + second_largest
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	len = arr.length - 1
	bool_val = false
	break_val = false
	for i in 0..len do
	    for j in 0..len do
	        if i == j
	            next
	        end
	        sum = arr[i]+arr[j]
	        if sum == n 
	            bool_val = true
	            break_val = true
	            break
	        end
	    end
	    if break_val == true
	        break
	    end
	end
	bool_val

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
	bool_val = false
	if s.length != 0
	    s = s.downcase
	    if s[0].match(/[a-z]/) != nil
	        h = Hash.new(true)
	        h["a"] = true
	        h["e"] = true
	        h["i"] = true
	        h["o"] = true
	        h["u"] = true
	    
	        if h.key?(s[0]) == false
	            bool_val = true
	        end
	    end
	end
end

def binary_multiple_of_4? s
	bool_val = false

	if s.scan(/\D/).empty?
		if (s == "0") # 4 * 0 = 0
			bool_val = true
		elsif s.length >= 2
			if (s[s.length - 1] == "0") and (s[s.length - 2] == "0")
				bool_val = true
			end
		end
	end
	bool_val
end

# Part 3

class BookInStock
# YOUR CODE HERE

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		if isbn.length == 0
			raise ArgumentError.new("empty isbn")
		elsif price <= 0
			raise ArgumentError.new("price is invalid")
		else
			@isbn = isbn
			@price = price
		end
	end

	def price_as_string
		price = @price.to_s

		if price.match(/[.]/) == nil
		    price = "$" + price + ".00"
		else
		    arr = price.split(".")
		    while (arr[1].length < 2)
		        arr[1] << "0"
		    end
		    price = "$" + arr[0] + "." + arr[1]
		end
	end
end
















