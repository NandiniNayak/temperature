class Person
    attr_accessor :name, :pin, :account

  def initialize(name, pin, account)
    @name = name
    @pin = pin
    @account = account
  end


end
class Bank_acc
  def initialize(acc_num, balance)
  @acc_num = acc_num
  @balance = balance
  end
  attr_accessor :acc_num, :balance
end


rick = Person.new("","", 3)
rick = Bank_acc.new("123", "$500,000")
morty = Person.new("Morty", "S@d.com", "Road")
morty = Bank_acc.new("1077" , "-$3010")
puts "Enter Name?"
name = gets.chomp.capitalize!
puts "Enter Pin"
pin = gets.chomp.to_i
doug = Person.new(name, pin, Bank_acc.new(1,2))
puts """
Name    : #{doug.name}
Pin     : #{doug.pin}
=================================
Balance : #{doug.account.balance}
"""
puts
string = "1".to_i
