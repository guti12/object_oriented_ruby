# shoes = {:color => "blue", :price => 50, :size => 10}
# shirts = {color: "red", price: 20, size: "M"}
# pants = {color: "black", price: 15, size: "M"}

# puts "We have #{shoes[:color]} shoes"

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Store
	attr_reader :color, :price, :size
	attr_writer :price

	def initialize(input_options)
		@color = input_options [:color]
		@price = input_options [:price]
		@size = input_options [:size]
	end

	# def color
	# 	@color
	# end

	# def price
	# 	@price
	# end

	# def size
	# 	@size
	# end

	# def price=(new_price)
	# 	@price = new_price
	# end

	def print_info
		puts "The color of the item is #{color}. The price is #{price} and the size is #{size}"
	end

		
	end

shoes = Store.new(color: "blue",
									price: 50, 
									size: 10)

puts shoes.price
puts shoes.print_info


