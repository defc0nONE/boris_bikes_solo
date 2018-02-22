require './lib/docking_station'

describe DockingStation do
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
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
# test 7
  it 'shows docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
# test 8
  it 'raises an error if no bikes are released' do
    expect { subject.release_bike }.to raise_error "No bikes"
  end
# test 9
  it 'dock only accepts 1 bike' do
    bike1 = Bike.new
    subject.dock(bike1)
    bike2 = Bike.new
    expect { subject.dock(bike2) }.to raise_error "Bike dock full"
  end
end
