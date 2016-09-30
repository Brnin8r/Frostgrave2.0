class CreateNeutrals < ActiveRecord::Migration
  def change
    create_table :neutrals do |t|
      
      t.integer :school_id
      t.integer :neutral_school_id

      t.timestamps null: false
    end
  end
end
