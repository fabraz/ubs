require 'rails_helper'

RSpec.describe District, type: :model do

	# Modules for District that helps reduce duplication
	module DistrictHelpers
	end

	# Valid attributes for creating a District
	let(:valid_attr_name){{district_name: "CENTRO"}}
	let(:valid_attr_name_number){{district_name: "CENTRO 1"}}
	let(:invalid_attr_name_blank){{district_name: ""}}
	let(:invalid_attr_name_number){{district_name: "12314"}}
	let(:invalid_attr_name_char){{district_name: "!@#$%*{}"}}

	# Describes district unit test
	describe "Validation" do
		context "when enter valid attributes" do
			context "only letters" do
				subject(:valid_district){District.new(valid_attr_name)}
				it "should create a district" do
					expect(valid_district.valid?).to be_truthy
				end
			end
			context "letters and numbers" do
				subject(:valid_district){District.new(valid_attr_name_number)}
				it "should create a district" do
					expect(valid_district.valid?).to be_truthy
				end
			end
		end

		context "when enter invalid attributes" do
			context "blank name" do
				subject(:invalid_district){District.new(invalid_attr_name_blank)}
				it "should not be created" do
					expect(invalid_district.valid?).to be_falsey
				end
			end
			context "with just numbers" do
				subject(:invalid_district){District.new(invalid_attr_name_number)}
				it "should not be created" do
					expect(invalid_district.valid?).to be_falsey
				end
			end
			context "with just special chars" do
				subject(:invalid_district){District.new(invalid_attr_name_char)}
				it "should not be created" do
					expect(invalid_district.valid?).to be_falsey
				end
			end
		end
	end

end
