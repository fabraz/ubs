class Address < ActiveRecord::Base
	validates :cep, :number, :street, presence: true
end
