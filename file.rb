puts "Hey what file do you want to read"
#get the file name
filename = gets.chomp

#open the txt file
txt=File.open(filename)

puts "you opened #{filename}"
puts "=" * 15

#read method read the content of text file
print txt.read
