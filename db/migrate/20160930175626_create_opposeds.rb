class CreateOpposeds < ActiveRecord::Migration
  def change
    create_table :opposeds do |t|
      
      t.integer :school_id
      t.integer :opposed_school_id

      t.timestamps null: false
    end
  end
end
