exit = false

def menu
  puts "1---exit"
  puts "2---poem"
end

until exit do
  menu
  command = gets.chomp
  case command
    when "1"
      exit = true
    when "2"
      puts "=" *15
      puts "Hello"
    else
      puts "wrong commnad"
  end
end
