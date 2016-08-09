class Customer
  def initialize(name,account)

    @name = name
    @account = account

  end

attr_accessor :name, :account

  def withdraw(withdraw)
    @withdraw = withdraw
  end
  attr_accessor :withdraw

end

temp = Customer.new("Top", filename="volt.txt")

puts temp.name


# print temp1

puts "What file do you want to read"
txt = open(filename, 'r+')
system "cls"

puts "Your balance is "
print txt.read
txt.rewind
@balance = txt.read
puts " withdraw $20"
@balance = @balance.to_i - 20
# File.truncate('volt.txt',0)
txt.rewind
txt.write(balance)
# txt.write("\n")
#
# txt.rewind

txt.close
