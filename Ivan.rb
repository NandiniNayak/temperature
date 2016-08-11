class Car
  def initialize(make,model,year)
    @make = make
    @model = model
    @year = year
  end
  attr_accessor :make, :model, :year
end

class Driver
  def initialize(car,name,age)
    @car=car
    @name=name
    @age=age
  end
  attr_accessor :car,:name,:age
end

ferrari = Driver.new(Car.new("SUV","X15",2010),"Ivan",19)

puts "what is your cars make model and year? #{ferrari.car.year}"
