class Parse < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path, headers: true, header_converters: :symbol, converters: :numeric) do |row|

			ubs_hash = row.to_hash # All datas in the row

			# Replace the string "Não se aplica" with "0"
			ubs_hash[:dsc_telefone] = "0" if ubs_hash[:dsc_telefone] == "Não se aplica"

			# Avoid City duplication
			if City.find_by_name(ubs_hash[:dsc_cidade])
				city = City.find_by_name(ubs_hash[:dsc_cidade])
			else
			    city = City.create(:name => ubs_hash[:dsc_cidade])
			end

			# Avoid District duplication
			if District.find_by_district_name(ubs_hash[:dsc_bairro])
				district = District.find_by_district_name(ubs_hash[:dsc_bairro])
			else
			    district = District.create(:district_name => ubs_hash[:dsc_bairro],:city_id => city.id)
			end

			# Creating models
		    address = Address.create(district_id: district.id, 
		    	street: ubs_hash[:dsc_endereco], 
		    	country_code: ubs_hash[:cod_munic])

		    basic_unit = BasicUnit.create(:estab_name => ubs_hash[:nom_estab], 
		    	:latitude => ubs_hash[:vlr_latitude], 
		    	:longitude =>ubs_hash[:vlr_longitude], 
		    	:cnes_id =>ubs_hash[:cod_cnes], 
		        :physical_situation =>ubs_hash[:dsc_estrut_fisic_ambiencia], 
		        :special_needs_situation =>ubs_hash[:dsc_adap_defic_fisic_idosos], 
		        :equips_situation =>ubs_hash[:dsc_equipamentos], 
		        :meds_situation =>ubs_hash[:dsc_medicamentos], 
		        :address_id => address.id,
		        :phone => ubs_hash[:dsc_telefone],
		        :city_id => city.id,
		        :district_id => district.id)
		end


	end
end
