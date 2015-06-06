class Parse < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path, headers: true, header_converters: :symbol, converters: :numeric) do |row|
			ubs_hash = row.to_hash

			if ubs_hash[:dsc_telefone] == "Não se aplica"
				ubs_hash[:dsc_telefone] = "0"
			end

		    city = City.create(:name => ubs_hash[:dsc_cidade])
		    district = District.create(:district_name => ubs_hash[:dsc_bairro],:city_id => city.id)

		    address = Address.create(district_id: district.id, 
		    	street: ubs_hash[:dsc_endereco], 
		    	country_code: ubs_hash[:cod_munic])

		    @basic_unit = BasicUnit.create(:estab_name => ubs_hash[:nom_estab], 
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
