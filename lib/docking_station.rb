require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :DEFAULT_CAPACITY , :bikes , :capacity

def initialize(max_capacity = DEFAULT_CAPACITY)
  @bikes=[]
  @capacity = max_capacity
end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes.push({working: bike.working})
  end

  def release_bike
    fail("No bikes available") if empty?
    fail ("Broken bike") if !@bikes.last[:working]
    @bikes.pop(bike.working)
  end

  def working
  end

private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
