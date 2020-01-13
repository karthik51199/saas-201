class Animal
	def initialize
	puts "Animal class create"
	end

	def set_name(name)
	if name.is_a?Numeric
	puts "Numeric cannot be name"
	else
	@name = name
	end
	end

	def name=(name)
	if name.is_a?Numeric
	puts "Numeric cannot be name"
	else
	@name = name
	end
	end

	def get_name
	@name
	end

	def name
	@name
	end
end

cat = Animal.new

cat.name="bablee"
puts cat.name,cat.get_name

dog = Animal.new
dog.set_name "scooby"
puts dog.name,dog.get_name





















