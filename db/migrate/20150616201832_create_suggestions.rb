class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :who_suggests
      t.text :suggestion_text
      t.string :respond_email

      t.timestamps null: false
    end
  end
end
