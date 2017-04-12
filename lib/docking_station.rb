require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :DEFAULT_CAPACITY
attr_reader :bikes

def initialize
  @bikes=[]
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
    @bikes.length >=DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
