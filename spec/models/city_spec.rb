require 'rails_helper'

RSpec.describe City, type: :model do

 	let(:valid_attributes) {{:name => "Gama"}}
 	let(:invalid_attributes) {{:name => nil}}

	describe City do

		context 'with valid attributes' do
			before :each do
				@city = City.new(valid_attributes)
			end

			it "should create a new city" do
				expect(@city.valid?).to be_truthy
			end
		end

		context 'with invalid attributes' do
			before :each do
				@city = City.new(invalid_attributes)
			end

			it "should not create a new city" do
				expect(@city.valid?).to be_falsey
			end
		end
	end

end
