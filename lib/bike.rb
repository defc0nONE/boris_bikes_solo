class Bike
  attr_reader :status

  def initialize
    @status = "working"
  end

  def working
    @status
  end

  def report_bike(bike_status)
    @status = bike_status
  end
end
