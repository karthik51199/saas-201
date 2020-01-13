=begin
Showcase of a function in ruby
In ruby, Arguments are passed by value
=end

def sayhello(s)
puts "Hello #{s}...Greetings..!!"
end

puts "Enter your name:"
x = gets.chomp

sayhello x
