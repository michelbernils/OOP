# frozen_string_literal: true

# Animal class
class Animal
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def speak
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end

# Dog class
class Dog < Animal
  def speak
    puts "#{@name} barks"
  end
end

# Cat class
class Cat < Animal
  def speak
    puts "#{@name} meows"
  end
end

def make_animal_speak(animal)
  animal.speak
end

dog = Dog.new(name: 'Chanel')
cat = Cat.new(name: 'Mila')

make_animal_speak(dog)
make_animal_speak(cat)