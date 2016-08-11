class Customer
  def initialize(name,account)
    @name = name
    @account = account
  end
  attr_accessor :account
end

class Balance
  def initialize(balance)
    @balance = balance
  end

  def increment
    @balance = @balance + 20
    puts @balance
    balance = balance + 20
    puts balance
  end
attr_accessor :balance
end

nandini = Customer.new("nandini",Balance.new(100))
nandini.account.increment
nandini.account.balance
