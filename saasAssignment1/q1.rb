=begin
Problem1: Create a menu based ruby program to simulate simple
calculator
=end

puts "Enter x"
x =gets.to_i
puts "Enter y"
y = gets.to_i

puts "Enter\n\t1.x+y\n\t2.x-y\n\t3.x*y\n\t4.x/y\n\n"
ch = gets.to_i

case ch

when 1
	puts x+y
when 2
	puts x-y
when 3 
	puts x*y
when 4
	puts x.to_f/y
end
