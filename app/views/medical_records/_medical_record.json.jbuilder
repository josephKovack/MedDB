json.extract! medical_record, :id, :ssn, :first_name, :middle_name, :last_name, :dob, :family_history, :address, :city, :state, :existing_cond, :allergies, :medications, :hcp_id, :telephone, :doctor_first_name, :doctor_last_name, :employee_id, :fasting, :created_at, :updated_at
json.url medical_record_url(medical_record, format: :json)
