class GoodDog
  attr_accessor :name, :height, :weight, :age

  # @@ symbols signify a CLASS variable
  # These variables are SHARED by class instances rather than instantiated
  # Editing them from one instance updates the data among all other instances
  @@number_of_dogs = 0

  # DOG_YEARS is an example of a Constant.
  DOG_YEARS = 7.freeze

  def initialize(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  # self.what_am_i is an example of a CLASS method
  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def speak
    # {name} here is calling the instance method (name) which is
    # created by the attr_accessor declaration on line 2
    "#{name} says arf!"
  end

  def change_info(n, h, w, a)
    # self in this context is used to tell Ruby
    # that it should invoke the GoodDog class' "name",
    # "height", and "weight" setter methods (defined by the
    # attr_accessor declaration on line 2), instead of creating
    # local variables scoped to this change_info method
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS
  end

  def info
    "#{name} is #{age} (in dog years), weighs #{weight}, and is #{height} tall."
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  private

  def human_years
    age * DOG_YEARS
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs', 2)
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs', 5)
puts sparky.info
puts sparky.human_years

puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs

fido = GoodDog.new('Fido', '14 inches', '22 lbs', 10)
puts fido.info

puts GoodDog.total_number_of_dogs
puts sparky.to_s
