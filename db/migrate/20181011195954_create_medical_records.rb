class CreateMedicalRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_records do |t|
      t.integer :ssn
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :family_history
      t.string :address
      t.string :city
      t.string :state
      t.string :existing_cond
      t.string :allergies
      t.string :medications
      t.integer :hcp_id
      t.integer :telephone
      t.string :doctor_first_name
      t.string :doctor_last_name
      t.integer :employee_id
      t.boolean :fasting

      t.timestamps
    end
  end
end
