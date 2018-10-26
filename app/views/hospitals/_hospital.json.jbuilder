json.extract! hospital, :id, :hospital_id, :hospital_name, :address, :city, :state, :telephone, :hospital_type, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
