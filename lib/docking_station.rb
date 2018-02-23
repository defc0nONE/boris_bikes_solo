require_relative 'bike'

class DockingStation
  attr_reader :capacity
  attr_reader :bikes_in_dock
  attr_reader :bike
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
  @bikes_in_dock = []
  @capacity = capacity
  end

  def release_bike
    fail 'No bikes' if empty
    @bikes_in_dock.pop
  end

  def dock(bike, bike_status = "working")
    fail 'Bike dock full' if full
    bike.report_bike(bike_status)
    @bikes_in_dock << bike
  end

  private

  def empty
    @bikes_in_dock.count.zero?
  end

  def full
    @bikes_in_dock.count == @capacity
  end

end
