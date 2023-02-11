# frozen_string_literal: true

# Person class
class Person
  attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greeting
    p "Hi, my name is #{name} and I have #{age} years old"
  end
end

# This work, because we are using attr_accessor
person = Person.new(name: 'John', age: 30)
person.greeting
person.name = 'Michel'
person.age  = 28
person.greeting
