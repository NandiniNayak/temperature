puts "what file do you want to read"
filename = gets.chomp

#a+ reads and write
txt = File.open(filename)
txt=open(filename, 'a+')

puts " the file you opened was #{filename}"
puts "=" * 15
puts txt.read

puts "=" * 15
puts "what city would you like to add"
city = gets.chomp

txt.write(city)
txt.write('\r\n') #use double quotes
txt.rewind

puts "="*15
puts txt.read
txt.close  #no one can read write till its closed
