class Man
end

class Human

	def initialize(name)
	@name = name
	end

	def to_s
	return "This is a #{@name}"
	end
end

m = Man.new
puts m

h = Human.new("abhi")
puts h
