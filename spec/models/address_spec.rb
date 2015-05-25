require 'rails_helper'

RSpec.describe Address, type: :model do

  let(:valid_attributes){:cep => "12312312", 
		:district => District.new(:name => "CENTRO"), 
		:number => "10", 
		:street: "Street"}

	let(:invalid_attributes){:cep => "invalid", 
		:district => District.new(:name => "1234"), 
		:number => "abc", 
		:street: ""}

	describe Address do
		describe "Creating valid address" do
			before :each do
				@address = Address.new(valid_attributes)
			end

			it "should create a new address" do
				expect(@address.cep).to equal("12312312")
			end

		end
	end
end
