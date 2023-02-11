# frozen_string_literal: true

# Car class
class Car
  def start_engine
    p 'car started'
    inject_fuel
  end

  private

  def inject_fuel
    p 'fuel injected'
  end
end

car = Car.new
# This will raise an error. For private methods, it can only be called inside the class
# car.inject_fuel
car.start_engine
