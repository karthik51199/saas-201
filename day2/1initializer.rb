class Book

	attr_accessor :title,:author
	def initialize(title=nil,author=nil)
	@title = title
	@author = author
	end
end

b1 = Book.new
puts b1.title,b1.author
b2 = Book.new("The dark")
puts b2.title,b2.author
b3 = Book.new("The dark","Ram")
puts b3.title,b3.author
