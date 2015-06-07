require 'rails_helper'

RSpec.describe City, type: :model do

	# Attributes for City
 	let(:valid_attr) {{name: "Gama"}}
 	let(:invalid_attr_name_nil) {{name: nil}}
 	let(:invalid_attr_name_blank) {{name: ""}}

 	# Attributes for District
	let(:valid_attr_district){{district_name: "CENTRO"}}

	describe "association" do
		context "with a valid district" do
			subject(:district){District.create!(valid_attr_district)}
			subject(:city){City.create(valid_attr)}
			it "should create a association between city and districts" do
				city.districts << district
				expect(city.districts.first).to be_a(District)
				expect(city.districts).to include(district)
				expect(city.districts).not_to be_empty
			end
		end

		context "with multiple valid districts" do
			subject(:district_one){District.create!(valid_attr_district)}
			subject(:district_two){District.create!(valid_attr_district)}
			subject(:city){City.create(valid_attr)}
			it "should create a association between city and districts" do
				city.districts << district_one
				city.districts << district_two
				expect(city.districts).to include(district_one)
				expect(city.districts).to include(district_two)
				expect(city.districts).not_to be_empty
			end
		end
	end

	describe "validation" do

		context "with valid attributes" do
			subject(:valid_city){City.new(valid_attr)}
			it "should create a new city" do
				expect(valid_city.valid?).to be_truthy
			end
		end

		context "with invalid attributes" do
			context "nil name" do
				subject(:invalid_city){City.new(invalid_attr_name_nil)}
				it "should not create a city" do
					expect(invalid_city.valid?).to be_falsey
				end
			end
			context "blank name" do
				subject(:invalid_city){City.new(invalid_attr_name_nil)}
				it "should not create a city" do
					expect(invalid_city.valid?).to be_falsey
				end
			end
		end
	end

end
