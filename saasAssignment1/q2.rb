=begin
Problem2: Create a menu based application to perform the following
operations on numeric array.

1. Add value
2. minimum 3. maximum 4.sum 5. average 6. search 7.display 8.
delete value by index 9. delete value 10. exit
=end

arr = []
# arr = Array.new
begin
  puts "Enter choice\n\t1.Add value\n\t2.minimum\n\t3.maximum\n\t4.sum\n\t5.average\n\t6.search\n\t7.display\n\t8.delete value by index\n\t9.delete value\n\t10.exit"

  ch = gets.to_i

  case ch
  when 1
    puts "Enter integer\n"
    x = gets.to_i
    arr.push x
  when 2
    puts "min is #{arr.min}"
  when 3
    puts "max is #{arr.max}"
  when 4
    puts "Sum is #{arr.sum}"
  when 5
    puts "avg is #{arr.sum.to_f / arr.length}"
  when 6
    puts "Enter elemrnt to be searched\n"
    x = gets.to_i
    puts "Index is #{arr.find_index x}"
  when 7
    puts "Array is", arr
  when 8
    puts "Enter delete index"
    x = gets.to_i
    arr.delete_at x
  when 9
    puts "Enter delete value"
    x = gets.to_i
    arr.delete x
  end
end while ch != 10
