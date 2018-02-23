require './lib/bike'
#test 2
describe Bike do
  it { is_expected.to respond_to :working? }

#test 11
  it 'has a default status of working' do
    bike = Bike.new
    expect(bike.status).to eq 'working'
  end
end
