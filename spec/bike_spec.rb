require './lib/bike'
#test 2
describe Bike do
  it { is_expected.to respond_to :working? }
end
