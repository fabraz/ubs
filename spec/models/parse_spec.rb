require 'rails_helper'

RSpec.describe Parse, :type => :model do
	describe 'import' do
		context 'with invalid file extention' do
			before do
				file = File.open('public/csv/ubs_test.txt')
				Parse.import(file)
			end

			it 'should raise a exception'
		end

		context 'with valid file extention and attributes' do
			before do
				file = File.open('public/csv/ubs_test.csv')
				Parse.import(file)
			end

			subject(:city){City.first}
			subject(:district){District.first}
			subject(:address){Address.first}
			subject(:basic_unit){BasicUnit.first}

			context 'creating models' do
				it 'should have a city' do
					expect(city).to be_a(City)
				end

				it 'should have a district' do
					expect(district).to be_a(District)
				end

				it 'should have a address' do
					expect(address).to be_a(Address)
				end

				it 'should have a basic unit' do
					expect(basic_unit).to be_a(BasicUnit)
				end
			end

			context 'creating relationship' do
				it 'should have a association between city and district' do
					expect(city.districts).not_to be_empty
					expect(city.districts.first).to be_a(District)
				end

				it 'should have a association between district and address' do
					expect(district.address).not_to be_empty
					expect(district.address.first).to be_a(Address)
				end
				
			end
		end

		context 'with valid file and invalid attributes' do
			context 'creating models' do
				it 'should not let create a city'
				it 'should not let create a district'
				it 'should not let create a basic unit'
			end
		end
	end
end