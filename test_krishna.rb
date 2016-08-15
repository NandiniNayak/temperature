exit = false
TXT = open("challenge2.txt",'a+')

def menu
puts "Welcome!, Start Your Shopping Here"
puts "\n"
puts "1. Grocery"
puts "2. Checkout"
puts "3. Dairy"
puts "4. Bakery"
puts "5. Exit"
puts "\n"
end

until exit do

menu
command = gets.chomp.to_i

  if command == 1
    puts " what grocery you want to Find"
    input =gets.chomp
    TXT.rewind
    items=TXT.read
    if items.include?(input)
      puts "item already exists"
    else
      TXT.rewind
      TXT.write(input)
      puts "item added to the list"
    end
  else
    puts "hi"
  end
end
