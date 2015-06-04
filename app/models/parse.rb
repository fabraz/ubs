class Parse < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path, headers: true, header_converters: :symbol, converters: :numeric) do |row|
			ubs_hash = row.to_hash
			city = City.create(:name => ubs_hash[:dsc_cidade])
			district = District.create(:district_name => ubs_hash[:dsc_bairro],:city_id => city.id)

			address = Address.create(:district_id => district.id, 
				:street => ubs_hash[:dsc_endereco], 
				:country_code => ubs_hash[:cod_munic])

			# ubs = Ubs.create(:name => ubs_hash[:nom_estab], 
			# 	:latitude => ubs_hash[:vlr_latitude], 
			# 	:longitude =>ubs_hash[:vlr_longitude], 
			# 	:cnes =>ubs_hash[:cod_cnes], 
			#     :structure_ambience =>ubs_hash[:dsc_estrut_fisic_ambiencia], 
			#     :structure_elderly =>ubs_hash[:dsc_adap_defic_fisic_idosos], 
			#     :equipament =>ubs_hash[:dsc_equipamentos], 
			#     :drugs =>ubs_hash[:dsc_medicamentos], :endereco => endereco)
		end
	end
end
