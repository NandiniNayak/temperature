###################### Food connect##########################################
# Problem statement : Huge amount of food is being wasted across the world,
# at the same time we have many people starving.
# Solution : This app enables the suppliers to communicate the excess food to
# the NGO and as a pay back get them brand value in the market
# This requires 3 classes supplier, organization and food (categories of food)
# list of suppliers and organization
# email from supplier to organization regarding the food type, quantity, adress, contact, pick up time.- gem
# post image of the food items- gem
# Terminal table to advertize the suppliers  - gem
# logo - gem
filename = 'food.txt'
TXT = open(filename,'a+')
class Supplier
  def initialize(name,food, quantity, address, contact, pickUpTime)
    @name = name
    @food = food
    @quantity = quantity
    @address = address
    @contact = contact
    @pickUpTime = pickUpTime
  end

  attr_accessor :name,:food, :quantity, :address, :contact, :pickUpTime

  def updateText
    database = ["name","food","quantity","address","contact","pickuptime"]
    databaseUpdate =[]
    database.each do |data|
      TXT.write(data)


  end

  def supplierdetails
    filename = 'food.txt'
    txt = open(filename,'a+')
    @food_quantity = Hash.new
    puts "Hey #{@name} what food do you want to donate"
    @food = gets.chomp.to_s
    puts "How many #{@food}'s' would you like to donate"
    @quantity = gets.chomp.to_i
    @food_quantity[@food] = @quantity
    puts "Enter your address"
    @address = gets.chomp
    puts "Enter contact details"
    @contact = gets.chomp
    puts "Enter pick up time"
    @pickUpTime = gets.chomp
    txt.write(@address)
end

end

class Organization
  def initialize;end
end


dominos = Supplier.new("nil","nil","","","","")
dominos.supplierdetails
