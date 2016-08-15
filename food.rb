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
require 'mail'
# require 'net/smtp'
require 'terminal-table'
require 'catpix'
class Supplier
  def initialize(name,food, quantity, address, contact, pickUpTime)
    @name = name
    @food = food
    @quantity = quantity
    @address = address
    @contact = contact
    @pickUpTime = pickUpTime
  end

  attr_accessor :name,:food, :quantity, :address, :contact, :pickUpTime,:dbUpdate

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def supplierdetails
    @database = ["name","food","quantity","address","contact","pickuptime"]
    @dbUpdate =[]
    system "clear"
    @database.each do |data|
       puts "\e[33mPlease enter #{data}: \e[0m"
       @dbUpdate << gets.chomp
    end
    filename = "food.txt.rb"
    data = open(filename, "a+")
    data.write("#{@dbUpdate[0]} = Supplier.new(\"#{@dbUpdate[0]}\", \"#{@dbUpdate[1]}\",#{@dbUpdate[2]}, \"#{@dbUpdate[3]}\", \"#{@dbUpdate[4]}\", #{@dbUpdate[5]})\n")
    data.rewind
    data.read
    data.close
  end
  require './food.txt.rb'
  def display
    rows=[]
    table =[]
    Supplier.all.each do |database|
      rows << [database.name,database.food,database.quantity]
      table = Terminal::Table.new :title => "Food Connect",:headings => ['Supplier','food','quantity(KGS)'],:rows => rows
    end
    puts table
  end
end

suppliers = Supplier.new("","","","","","")
suppliers.supplierdetails
suppliers.display
####change account settings in gmail- go to my account ->sign-in and security ->
#connected apps and sites -> Allow less secure apps turned on

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => '115-64-21-14.static.tpgi.com.au',
            :user_name            => "nandini@coderfactory.com",
            :password             => "nandusuchi3",
            :authentication       => 'login',
            :enable_starttls_auto => true  }


Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
    to 'nandini@coderfactory.com'
    from 'nandini.r.nayak@gmail.com'
    subject 'testing sendmail'
    body 'Find attached the food list and pick up time'
    add_file  "./food.txt"
end
