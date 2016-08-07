class Person

  def initialize(age, gender, name)
      @name = name
      @age = age
      @gender = gender
  end

  def self.all
     ObjectSpace.each_object(self).to_a
  end
  def name
    @name
  end
end

class Superhero < Person

  def initialize(age,gender,name,superpower)
    super(age,gender,name)    #not clear what super does#
    @superpower=superpower
  end

  def superpower
    @superpower
  end

end

nandini = Person.new(26,"female","Nandini")
trent = Superhero.new(26,"male","Trent","coding")
puts nandini.name
puts trent.superpower

Person.all.each do |test|
    puts "Hi #{test.name}"
end
