class District < ActiveRecord::Base
	validates :district_name, presence: true,
		format: {with: /\w\D[^!@#$%*}{}]/, message: "can not be only numbers"}, unique: true

end
