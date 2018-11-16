json.extract! patient, :id, :fname, :lname, :reason, :room_num, :hospital_id, :entry, :exit, :medications, :created_at, :updated_at
json.url patient_url(patient, format: :json)
