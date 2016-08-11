class Customer
  def initialize(name,account,email,address,contact)
    @name = name
    @account = account
    @email = email
    @address = address
    @contact = contact
  end
 attr_accessor :name, :account, :email, :address, :contact
end


class Bankacc
  def initialize(balance)
    @balance = balance
  end
  attr_accessor :balance
end

nandini=Customer.new("nandini",Bankacc.new(200),"nandini.r.nayak@gmail.com","248 North RD","470104234")
puts nandini.account.balance










# puts nandini.name
#
# while nandini.account.balance != 0
#   puts "what do you want to do"
#   puts "1 - withdraw 20 $"
#   puts "2 - deposit"
#   input = gets.chomp.to_i
#
#   if (input == 1)
#     nandini.account.balance += 20
#     puts "Hey #{nandini.name} thank for the deposit"
#     puts "your new balance is #{nandini.account.balance}"
#   elsif (input == 2)
#     nandini.account.balance -= 20
#     puts "Hey #{nandini.name} thanks for the deposit"
#     puts "your new balance is #{nandini.account.balance}"
#   end
# end
