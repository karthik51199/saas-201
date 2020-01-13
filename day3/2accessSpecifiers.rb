class Book
	
	def m1
	puts "m1"
	end

	def m2
	puts "m2"
	end

	private :m2
end

b = Book.new
b.m1
