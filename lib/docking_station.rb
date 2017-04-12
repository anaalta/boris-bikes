require_relative 'bike'

class DockingStation

attr_reader :bikes

def initialize
  @bikes=[]
end

  def dock(bike)
    fail 'Docking station full' if @bikes.length >= 20
    @bikes.push(bike)
  end

  def release_bike
    fail("No bikes available") unless @bikes.length > 0
    @bikes.pop(bike)
  end

  def working?
  end

end
