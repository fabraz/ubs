class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    t.string :state_acronym, null: false
    t.string :state_name, null: false
    
	t.timestamps null: false
    end
  end
end
