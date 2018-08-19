class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name 
      t.integer :show_id
      t.integer :actor_id 
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
    end
  end
end