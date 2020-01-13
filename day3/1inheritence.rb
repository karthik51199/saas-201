class A
	def m1
	puts "A class"
	end
end

class B < A
	def m2
	puts "B class"
	end
end

a1 = A.new
a1.m1

b1 = B.new
b1.m1
b1.m2

