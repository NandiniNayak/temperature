class Customer
  def initialize(name,email,contact,address,accountNum)
    @name       = name
    @email      = email
    @contact    =  contact
    @address    = address
    @accountNum = accountNum
    @balance = 0
  end

  def cust_details
    return "#{@name},#{@email},#{@contact},#{@address},#{@accountNum}\n"
  end

  attr_accessor :name,:email,:contact,:address,:accountNum,:balance

  def credit (credit_ammount)
    @balance = @balance - credit_ammount
  end

  def debit (debit_ammount)
    @balance = @balance - debit_ammount
  end
end
client = Customer.new("","","","","")

puts "Input customer details"
puts "Enter Customers name"
@name = gets.chomp
puts "Enter #{@name}'s email"
@email = gets.chomp
puts "Enter #{@name}'s contact"
@contact = gets.chomp
puts "Enter #{@name}'s address"
@address = gets.chomp
puts "Enter #{@name}'s accountNum"
@accountNum = gets.chomp

puts " Verify customer details"
puts client.cust_details
