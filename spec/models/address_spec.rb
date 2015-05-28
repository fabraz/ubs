require 'rails_helper'

RSpec.describe Address, type: :model do

	describe Address do
		describe "Creating valid address" do
			before :each do
				@address = Address.new(cep: "12312312", number: "10", street: "Street")
			end

			it "should create a new address" do
				expect(@address.valid?).to be_truthy
			end

		end

		describe "Creating invalid address" do
			before :each do
				@address = Address.new(cep: nil, number: nil, street: nil)
			end

			it "should not create a new adress" do
				expect(@address.valid?).to be_falsy
			end
		end

	end
end
