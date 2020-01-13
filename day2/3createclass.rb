class Animal
	attr_writer :name,:height,:weight
	attr_reader :name,:height,:weight
end

cat = Animal.new

cat.name= "hanoi"
cat.height=3
cat.weight=20

puts cat.name,cat.height,cat.weight

class Human
	attr_accessor :name,:height,:weight
end

ram = Human.new

ram.name="ram"
ram.height= 5
ram.weight=49

puts ram.name,ram.height,ram.weight
