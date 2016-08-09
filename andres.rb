# require './Numgen.rb'

class Person
  def initialize(full_name, address, email, accountNo)
    @full_name = full_name
    @address = address
    @email = email
    @accountNo = accountNo
  end

  attr_accessor :full_name, :address, :email
  attr_reader :accountNo

end

class Account < Person
  def initialize(full_name=nil, address=nil, email=nil, accountNo=nil)
    @balance_in_file = File.open("balance#{accountNo}.txt", 'a+')
    @balance_in_file.write(0)
    @balance_in_file.rewind
    @balance = balance_in_file.read.to_i
    @balance_in_file.close
    super(full_name, address, email, accountNo)
  end

  def test(amount)

    @amount = amount.to_i
    @balance += @amount
    @balance_in_file = File.open("balance#{accountNo}.txt", 'r+')
    @balance_in_file.rewind
    @balance_in_file.write(@balance)
    @balance_in_file.close

  end

  # def debit(amount)
    # @amount = amount.to_i
    # @balance_in_file = File.open("balance#{accountNo}.txt", 'r+')
    # @balance = balance_in_file.read.to_i
    # @balance -= @amount
    # @balance_in_file.write(@balance)
    # @balance_in_file.close
  # end

 # def setbalance(amount)
  #  @amount = amount.to_i
  #  @balance_in_file = File.open("balance#{accountNo}.txt", 'r+')
  #  @balance_in_file.write(@amount)
  #  @balance_in_file.rewind
  #  @balance = balance_in_file.read
  #  @balance_in_file.close
 # end

  attr_accessor :balance, :amount, :balance_in_file, :credit, :debit
end

# numgen_1 = NumGen.new

account1 = Account.new("Andres", "157 Liverpool", "adad@dads.com", "200")


puts account1.balance

 account1.test(20)
# account1.debit(10)
