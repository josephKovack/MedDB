class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.integer :hospital_id
      t.string :hospital_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :telephone
      t.string :hospital_type

      t.timestamps
    end
  end
end
