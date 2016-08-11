class Customer
  def initialize(name,account)
    @name = name
    
attr_accessor :name, :account

def withdraw(withdraw)
  @withdraw = withdraw
end
attr_accessor :withdraw

end

temp = Customer.new("Top", filename="volt-txt.rb")

puts temp.name

puts "What file do you want to read"
txt = open(filename, 'r+')
system "cls"

puts "Your balance is "
print txt.read
txt.rewind
balance = txt.read
puts " withdraw $20"
puts balance
balance = (balance.to_i - 20)
puts balance
txt.rewind
txt.close
txt = open(filename,'a+')
# File.truncate('volt.txt',0)
txt.write(balance)


txt.rewind

txt.close
