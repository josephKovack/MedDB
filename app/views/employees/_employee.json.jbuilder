json.extract! employee, :id, :employee_id, :first_name, :last_name, :telephone, :department, :title, :payrate, :start_date, :hospital_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
