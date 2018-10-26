class CreateHealthCareProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :health_care_providers do |t|
      t.integer :hcp_id
      t.string :company_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :telephone

      t.timestamps
    end
  end
end
