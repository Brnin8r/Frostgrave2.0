class CreateAligneds < ActiveRecord::Migration
  def change
    create_table :aligneds do |t|

      t.integer :school_id
      t.integer :aligned_school_id

      t.timestamps null: false
    end
  end
end
