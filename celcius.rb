class Celsius

  def initialize(temperature)
    @temperature = temperature
  end

  def temperature
    @temperature.to_s + "degree c"
  end

  def farhenhiet
    @farhenhiet = @temperature*1.8 +32
    @farhenhiet.round.to_s + " degree F"
  end
end

Week_temp = Hash["Monday"=> nil,"Tuesday"=>nil,"Wednesday"=>nil,"Thursday"=>nil,
                    "Friday"=>nil,"Saturday"=>nil,"Sunday"=>nil]
Week_temp.each do |day,temp|
  puts "Enter #{day}'s temperature in celsius"
  Week_temp[day]=Celsius.new(gets.chomp.to_i)
end
Week_temp.each do |day,temp|
  puts "#{day}| #{temp.temperature} | #{temp.farhenhiet}"
end
