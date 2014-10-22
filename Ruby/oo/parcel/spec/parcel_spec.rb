# spec/parcel_spec.rb

require 'rspec'
require 'parcel'

describe Parcel do
	it 'is initialized with three dimensions' do
		test_parcel = Parcel.new(10, 10, 10, 5)
		test_parcel.should be_an_instance_of Parcel
	end
	it 'returns volume based on dimensions' do
		test_parcel = Parcel.new(10, 11, 10, 5)
		test_parcel.volume().should eq 1100
	end
	it 'return weight in pounds times $1.10' do
		test_parcel = Parcel.new(1, 1, 1, 5)
		test_parcel.cost_to_ship().should eq 5.5
	end
end
