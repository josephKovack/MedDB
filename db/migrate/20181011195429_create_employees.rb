class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :first_name
      t.string :last_name
      t.integer :telephone
      t.string :department
      t.string :title
      t.integer :pay
      t.date :start_date
      t.integer :hospital_id

      t.timestamps
    end
  end
end
