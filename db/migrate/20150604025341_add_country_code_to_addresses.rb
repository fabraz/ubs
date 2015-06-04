class AddCountryCodeToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :country_code, :integer
    add_column :addresses, :district_id, :integer
  end
end
