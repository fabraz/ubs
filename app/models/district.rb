class District < ActiveRecord::Base
	has_one :address

	validates :district_name, presence: true,
		format: {with: /\w\D[^!@#$%*}{}]/, message: "can not be only numbers"}
end
