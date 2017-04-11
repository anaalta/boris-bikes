require 'dockingstation'
describe DockingStation do
  it 'responds_to release_bike' do
  is_expected.to respond_to(:release_bike)
  end
  it 'responds_to working?' do
  is_expected.to respond_to(:working?)
  end
end

describe :release_bike do
it { expect :release_bike == Bike.new }
it {expect Bike.new.respond_to? :working?}
end
