# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerMedicalRecordsInsert < ActiveRecord::Migration[5.0]
  def up
    create_trigger("medical_records_after_insert_row_tr", :generated => true, :compatibility => 1).
        on("medical_records").
        after(:insert) do
      <<-SQL_ACTIONS
        UPDATE medical_records SET allergies = 'No allergies'

    WHERE medical_records.allergies = NULL;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("medical_records_after_insert_row_tr", "medical_records", :generated => true)
  end
end
