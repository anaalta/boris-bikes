require 'Bike'

describe Bike do
  it { is_expected.to respond_to :working }
  it "checks if the bike is working (default true)" do
    expect(subject.working).to eq true
  end
  it "checks if the default for working can be changed" do
    expect(subject.working=false).to eq false
  end


end
