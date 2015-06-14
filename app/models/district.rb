class District < ActiveRecord::Base
	has_many :address

	validates :district_name, presence: true,
		format: {with: /\w\D[^!@#$%*}{}]/, message: "can not be only numbers"}, uniqueness: true
end
