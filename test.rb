filename = 'account.txt'
TXT = open(filename, 'r+')

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
  def getbalance
    TXT.rewind
    @balance = TXT.read
    puts "my current balance is #{@balance}"
  end

  def setbalance
    TXT.rewind
    TXT.write(@balance)

  end
  def updatebalance(deposit)
    @deposit = deposit
    TXT.rewind
    @balance = TXT.read
    @balance = @balance.to_i + @deposit.to_i
  end
  def deduct(withdraw)
    @withdraw = withdraw
    TXT.rewind
    @balance = TXT.read
    @balance = @balance.to_i - @withdraw.to_i
  end

attr_accessor :balance,:deposit,:withdraw
end

nandini=Customer.new("nandini",Bankacc.new(200),"nandini.r.nayak@gmail.com","248 North RD","470104234")

filename ="account.txt"
txt = open(filename,'r+')
while nandini.account.balance !=0
  puts "Hey what do you wanna do"
  puts "1 - Withdrawal"
  puts "2 - deposit"

  input = gets.chomp.to_i

  if input == 1
    puts "Hey how much do you want to withdraw??"
    take = gets.chomp.to_i
    nandini.account.deduct(take)
    nandini.account.setbalance
    nandini.account.getbalance

  elsif input == 2
    puts "Hey how much do you want to deposit"
    input = gets.chomp.to_i
    nandini.account.updatebalance(input)
    nandini.account.setbalance
    nandini.account.getbalance
  else
    puts "wrong entry, try again"
  end
end
