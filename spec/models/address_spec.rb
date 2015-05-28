require 'rails_helper'

RSpec.describe Address, type: :model do

  #let(:valid_attributes){:cep => "12312312", 
		#:district => District.new(:name => "CENTRO"), 
	#	:number => "10", 
	#	:street: "Street"}

	#let(:invalid_attributes){:cep => "invalid", 
		#:district => District.new(:name => "1234"), 
	#	:number => "abc", 
	#	:street: ""}

	describe Address do
		describe "Creating valid address" do
			before :each do
				@address = Address.new(cep: "12312312", number: "10", street: "Street")
			end

			it "should create a new address" do
				expect(@address.cep).to eq("12312312")
			end

		end

		#describe "Creating invalid address" do
		#	before :each do
		#		@address = Address.new(cep: nil, number: nil, street: nil)
		#	end

		#	it "should not create a new adress" do
		#		expect(@address).to eq(nil)
		#	end
		#end

	end
end
