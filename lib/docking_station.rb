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
    @bikes.push(bike)
  end

  def release_bike
    fail("No bikes available") if empty?
    @bikes.pop(bike)
  end

  def working?
  end

private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
