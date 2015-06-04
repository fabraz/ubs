require 'rails_helper'

RSpec.describe Parse, :type => :model do
	describe 'import' do
		context 'with invalid file' do
			it 'should not create an ubs' do

			end	
		end

		context 'with valid file' do
			before :each do
			#	file = File.new("ubs.csv", "w") 
			#	file.puts("vlr_latitude,vlr_longitude,cod_munic,cod_cnes,nom_estab,dsc_endereco,dsc_bairro,dsc_cidade,dsc_telefone,dsc_estrut_fisic_ambiencia,dsc_adap_defic_fisic_idosos,dsc_equipamentos,dsc_medicamentos
#-10.911237,-37.06207752,280030,3492,US OSWALDO DE SOUZA,TV ADALTO BOTELHO,GETULIO VARGAS,Aracaju,7931791326,Desempenho acima da média,Desempenho muito acima da média,Desempenho mediano ou  um pouco abaixo da média,Desempenho acima da média")
				file = File.open('public/ubs2.csv')
				Parse.import(file)
			end

			it 'should create a city' do
				city = City.first
				expect(city).to be_instance_of(City)
			end			

			it 'should create a district' do
				district = District.first
				expect(district).to be_instance_of(District)
			end	

			it 'should create a address' do
				address = Address.first
				expect(address).to be_instance_of(Address)
			end		

			# it 'should create an basic unity' do
			# 	ubs = Ubs.first
			# 	expect(ubs).to be_instance_of(Ubs)
			# end			

		end
	end
end

# Casos de Teste

# arquivo com extensao errada
# expect().to have city
# expect().to have district
# expect().to have ubs