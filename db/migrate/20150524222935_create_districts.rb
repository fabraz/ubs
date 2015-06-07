class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :district_name
      t.references :city

      t.timestamps null: false
    end
  end
end
