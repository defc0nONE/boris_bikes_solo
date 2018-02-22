require './lib/docking_station'

describe DockingStation do
  DEFAULT_CAPACITY = 20
# test 1
  it { is_expected.to respond_to :release_bike }
# test 3
  it 'releases a working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
# test 4 - 'dock(bike) method exists and accepts 1 argument'
  it { is_expected.to respond_to(:dock).with(1).argument }
# test 5 - 'bike method exists'
  it { is_expected.to respond_to :bike }
# test 6
  it 'docks a bike' do
    ds = DockingStation.new
    bike = Bike.new
    expect(ds.dock(bike)).to be_an_instance_of(Array)
  end
# test 7
  it 'shows docked bikes' do
    ds = DockingStation.new
    bike = Bike.new
    ds.dock(bike)
    expect(ds.bike).to eq @bikes_in_dock
  end
# test 8
  it 'raises an error if no bikes are released' do
    ds = DockingStation.new
    expect { ds.release_bike }.to raise_error "No bikes"
  end
# test 9
  it 'dock only accepts 20 bikes' do
    ds = DockingStation.new
    bike = Bike.new
    DEFAULT_CAPACITY.times{ ds.dock(bike) }
    expect { ds.dock(bike) }.to raise_error "Bike dock full"
  end

  it 'has a default capacity' do
    ds = DockingStation.new
    expect(ds.capacity).to eq 20
  end
end
