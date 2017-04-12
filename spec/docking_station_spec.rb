require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }
  it 'Checks that a new Docking station can accept a capacity parameter from user' do
    station = DockingStation.new(5)
    expect(station.capacity).to eq 5
  end
  it 'Checks that a new Docking station takes a default capacity of 20 if not passed a capacity value' do
    station = DockingStation.new()
    expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe ':release_bike' do
    it { expect :release_bike == Bike.new }
    it { expect Bike.new.respond_to? :working? }
    it "raises an error when there are no bikes available" do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe ':dock' do
    it "raise a error when more than 20 bikes" do
      subject.dock(Bike.new)
      expect {subject.capacity.times{subject.dock Bike.new }}.to raise_error "Docking station full"
    end
  end
end
