=begin
Problem3: Create a menu based application to perform the following
operations on String array which contains email ids.

1. Add mail id
2. display all 3. display only edu mail ids 4. search 5. delete mail id
by value 6. display unique domains of all mail ids 7. count mail ids in given domain

8. exit
=end

arr = []

begin

puts "\nEnter choice\n\t1. Add mail id\n\t2. display all \n\t3. display only edu mail ids \n\t4. search \n\t5. delete mail id by value \n\t6. display unique domains of all mail ids \n\t7. count mail ids in given domain\n\t8. exit"

ch = gets.to_i
puts 
case ch
when 1
	puts "Enter Mail\n"
	x = gets.chomp
	arr.push x
when 2 
	puts "The registered mail ids are",arr
when 3
	puts "The edu mail ids are"
	arr.each do |i|
	puts i if i.include?(".edu")
	end
when 4
	puts "Enter the mail id to be searched"
	temp = gets.chomp
	puts "The search index is #{arr.find_index temp}"
when 5
	puts "Enter the mail id to be deleted"
	temp = gets.chomp
	arr.delete temp
when 6
	puts "The domains of all the mail ids are\n"
	ans = []
	arr.each do |i|
	temp = i.index(".")
	ans.push i[temp+1..-1]
	end
	puts ans.uniq
when 7
	puts "Enter the domain"
	temp = gets.chomp
	cnt = 0
	arr.each do |i|
	cnt+=1 if i.include?(temp)
	end
	puts "No. of mail ids with the given domian are #{cnt}"
end

end while ch!=8

