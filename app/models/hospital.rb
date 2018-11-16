class Hospital < ApplicationRecord
  has_many	:Employee
  has_many  :Patients
end
