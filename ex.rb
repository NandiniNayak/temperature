class Person
  def initialize(name,balance,age)
    @name = name
    @age = age
    @balance = balance
  end

  def updatebalance
    @balance = @balance.to_i + 20
    puts @balance
  end
end

nandini = Person.new("nandini",30,26)
nandini.updatebalance
