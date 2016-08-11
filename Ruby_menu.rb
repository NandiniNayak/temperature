exit = false
class Restaurant
  def initialize
  end

  def menu
    # @menu ={"Paneer Mutter" => 20,"papadam" => 2,"Gulab Jamoon" => 15}
    # puts "The #{@menu[0]}'s price is #{@menu[0]}"
    puts " Welcome to the Kamath Restaurant"
    puts " 1.Panneer Mutter"
    puts " 2.Papadam "
    puts " 3.Gulab Jamoon "
    puts " 4.exit"
  end
  attr_accessor :value

  def price(num)
    @num = num
    if @num == 1
      @value = 20
    elsif @num == 2
      @value = 2
    else
      @value = 15
    end
  end
end

indian = Restaurant.new

until exit do
  indian.menu
  choice = gets.chomp

  case choice
    when "1"
      indian.price(1)
      puts "The price is #{indian.value}"
    when "2"
      indian.price(2)
      puts "The price is #{indian.value}"
    when "3"
      indian.price(3)
      puts "The price is #{indian.value}"
    when "4"
      exit = true
    else
  end
end



# end
