# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
Hospital.create!( hospital_name: 'Our Hope', address: '123 Easy street', city: 'Normal', state: 'Illinois', hospital_type: 'Clinic')
Hospital.create!( hospital_name: 'St.Mary', address: '440 North Ave', city: 'Plainfield', state: 'Illinois', hospital_type: 'ER')
Hospital.create!( hospital_name: 'Edwards', address: '890 Washington Street', city: 'Naperville', state: 'Illinois', hospital_type: 'ER')
Hospital.create!( hospital_name: 'Oakland', address: '345 Gorge Blvd', city: 'Montgomery', state: 'Illinois', hospital_type: 'Cancer Center')
Hospital.create!( hospital_name: 'Loretto', address: '1220 Lake Shore Drive', city: 'Chicago', state: 'Illinois', hospital_type: 'ER')
Hospital.create!( hospital_name: 'St. Anthony', address: '1540 Treeland Street', city: 'Chicago', state: 'Illinois', hospital_type: 'Clinic')
Employee.create!(last_name: 'Nebanda', first_name: 'Mary', start_date: Date.new(1998,1,15))
Employee.create!(last_name: 'Smith', first_name: 'Greg', start_date: Date.new(2000,5,12))
Employee.create!(last_name: 'Basin', first_name: 'Carter', start_date: Date.new(2013,11,2))
Employee.create!(last_name: 'Wilkes', first_name: 'Brandy', start_date: Date.new(2002,3,10))
Employee.create!(last_name: 'Jefferson', first_name: 'Mike', start_date: Date.new(2006,2,20))
Employee.create!(last_name: 'Georges', first_name: 'Mandy', start_date: Date.new(2016,8,13))
Employee.create!(last_name: 'Tuggles', first_name: 'Sandy', start_date: Date.new(2010,7,14))
Employee.create!(last_name: 'Kutcher', first_name: 'Ashton', start_date: Date.new(2003,6,15))
Employee.create!(last_name: 'Leno', first_name: 'Jay', start_date: Date.new(1990,8,10))
Employee.create!(last_name: 'Fox', first_name: 'Megan', start_date: Date.new(2009,9,20))

6.times do
HealthCareProvider.create!(hcp_id: Faker::Number.between(1, 6), company_name: Faker::Company.name, address: Faker::Address.street_address,
city: Faker::Address.city, state: Faker::Address.state, telephone: Faker::PhoneNumber.cell_phone)
end

6.times do
MedicalRecord.create!(ssn: Faker::IDNumber.valid, first_name: Faker::Name.first_name, middle_name: Faker::Name.middle_name,
last_name: Faker::Name.last_name, dob: Faker::Date.birthday(20,65), address: Faker::Address.street_address, city: Faker::Address.city,
state: Faker::Address.state, hcp_id: Faker::Number.between(1, 6), telephone: Faker::PhoneNumber.cell_phone, doctor_first_name: Faker::Name.first_name,
doctor_last_name: Faker::Name.last_name, employee_id: Faker::Number.between(1, 10))
end

6.times do
Patient.create!(fname: Faker::Name.first_name, lname: Faker::Name.last_name, room_num: Faker::Number.between(1, 400), hospital_id: Faker::Number.between(1, 6),
 entry: Faker::Date.backward(14), exit: Faker::Date.forward(10), medications: Faker::Lorem.sentence)
end
