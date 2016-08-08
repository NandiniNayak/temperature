class Car
  def initialize(make,age,speed,gasTankSize)
    @make = make
    @age = age
    @speed = speed
    @gasTankSize=gasTankSize
    @fuel = gasTankSize
  end
  attr_accessor :make,:age,:speed,:gasTankSize,:fuel

  def deplete_fuel
    @fuel = @fuel - 20
  end
end

class Driver
  def initialize(name,car,age,contact)
    @name = name
    @car = car
    @age = age
    @contact = contact
  end
  attr_accessor :name, :car, :age, :contact
end

# car1 = Car.new("AWD",50,320,25)
driver1 = Driver.new("Nandini",Car.new("Sedan",50,320,25),26,"470104234")

# puts car1.make
puts driver1.car.make
puts driver1.name
puts driver1.car.deplete_fuel
