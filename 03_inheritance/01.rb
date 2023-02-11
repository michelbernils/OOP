# frozen_string_literal: true

# Vehicicle class
class Vehicle
  attr_accessor :tires

  def initialize(tires:)
    @tires = tires
  end

  def tyre_number
    raise NotImplementedError, 'Subclasses must implement this method'
  end

  def engine_start
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end

# Car class
class Car < Vehicle
  def tyre_number
    p "It has #{tires} tires"
  end

  def engine_start
    p 'engine started'
  end
end

# Bicycle class
class Bicycle < Vehicle
  def tyre_number
    p "It has #{tires} tires"
  end

  def engine_start
    p 'dont have an engine'
  end
end

car = Car.new(tires: 4)
car.tyre_number
car.engine_start

bicycle = Bicycle.new(tires: 2)
bicycle.tyre_number
bicycle.engine_start
