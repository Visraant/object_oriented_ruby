class Vehicle
  attr_reader :speed, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end
  
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Bike < Vehicle
  def initialize
    super
    @speed = "six"
    @weight = 30
    @type = "Huffy"
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Vehicle
  def initialize
    super
    @miles = 300
    @year = 2015
    @make = "Ford Focus"
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

bike = Bike.new
car = Car.new

p car