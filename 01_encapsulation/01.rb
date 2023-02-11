# frozen_string_literal: true

# Person class
class Person
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greeting
    p "Hi, my name is #{name} and I have #{age} years old"
  end
end

# This doesnt work, because we are using attr_reader, I not able to change the object properties. I should use att_accessor.
person = Person.new(name: 'John', age: 28)
person.greeting
person.name = 'Michel'
person.greeting
