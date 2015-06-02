require 'rails_helper'

RSpec.describe Parse, :type => :model do
	describe 'import' do
		context 'with invalid file' do
			it 'should not create an ubs' do
				#file = File.open("ubs", mode="r") 

			end	
		end

		context 'with valid file' do
			before each: do
				file = CSV.read("/public/ubs.csv")
				Parse.import(file)
			end

			it 'should create an ubs' do
				city =City.first_or_create
				expect(city).to be_instance_of(City)
			end			

			it 'should create a district' do
				district = District.first_or_create
				expect(district).to be_instance_of(District)
			end			

			it 'should create an ubs' do
				ubs = Ubs.first_or_create
				expect(ubs).to be_instance_of(Ubs)
			end			

		end
	end
end

# Casos de Teste

# arquivo com extensao errada
# expect().to have city
# expect().to have district
# expect().to have ubs