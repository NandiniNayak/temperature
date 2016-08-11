Class Bank
  def initialize(balance)
    @balance = balance
  end
end

 filename = 'create.txt'
 TXT = open(filename,'r+')

puts "Balance or Deposit or Withdraw"
  @data = gets.chomp

    if @data == '1'
      puts "your Balance is #{balance.read}"
   elsif @data == '2'
     puts "how much to Dep"
     @depdata = gets.chomp.to_i

      puts " your current balance is  #{balance.read.to_i+@depdata}"
      balance.write("#{balance.read.to_i + @depdata}")
   elsif @data == '3'
     puts "how much to With"
     @with = gets.chomp.to_i
     puts "your current balance is #{balance.read.to_i- @with}"
   end

   balance.rewind
   balance.close
