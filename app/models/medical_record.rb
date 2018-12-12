class MedicalRecord < ApplicationRecord
  #belongs_to  :Employee,  optional: true
  #belongs_to  :HealthCareProvider,  optional: true

def self.update_records_sql
  <<-SQL
    UPDATE medical_records SET allergies = 'No allergies'
  SQL
end
trigger.after(:create) do
  <<-SQL
    #{ self.update_records_sql }
    WHERE medical_records.allergies = NULL
    SQL
end


end