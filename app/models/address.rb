class Address < ActiveRecord::Base
	validates :district_id, :country_code, :street, presence: true
end
