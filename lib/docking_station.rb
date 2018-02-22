require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize(capacity = 20)
  @bikes_in_dock = []
  @capacity = capacity
  end

  def release_bike
    fail 'No bikes' if @bikes_in_dock.count == 0
    @bike
  end

  def dock(bike)
    fail 'Bike dock full' if @bikes_in_dock.count == @capacity
    @bikes_in_dock << bike
  end
end
