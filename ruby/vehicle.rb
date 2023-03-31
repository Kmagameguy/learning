module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def accelerate(amount)
    @current_speed += amount
    puts "You accelerate to #{@current_speed} mph."
  end

  def decelerate(amount)
    @current_speed -= amount
    puts "You decelerate to #{@current_speed} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def turn_off
    @current_speed = 0
    puts "You stop the engine and park."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def age
    puts "Your #{@model} is #{years_old} years old."
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year} #{@model}."
  end

end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color}, #{year} #{@model}."
  end
end


lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina
lumina.accelerate(20)
lumina.current_speed
lumina.accelerate(20)
lumina.current_speed
lumina.decelerate(20)
lumina.current_speed
lumina.decelerate(20)
lumina.current_speed
lumina.turn_off
lumina.current_speed
puts lumina.color
puts lumina.year
lumina.spray_paint('Yellow')
puts lumina.color
MyCar.gas_mileage(13, 351)

f150 = MyTruck.new(2022, 'ford f-150', 'black')
puts Vehicle.number_of_vehicles
puts f150.can_tow?(300)

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

lumina.age
