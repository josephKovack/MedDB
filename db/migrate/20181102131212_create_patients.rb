class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :fname
      t.string :lname
      t.string :reason
      t.integer :room_num
      t.integer :hospital_id
      t.datetime :entry
      t.datetime :exit
      t.string :medications

      t.timestamps
    end
  end
end
