=begin

Default access specifiers:
instance variables -> private (They cannot be made public for an reason)
methods -> public

initialize method is private by default
when we create a object, we call new method

=end

class Book
	
	def m1
	puts "m1"
	end

	private
	def m2
	puts "m2"
	end
end

b = Book.new
b.m1
