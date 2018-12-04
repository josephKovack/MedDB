# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:Faker::Name.name
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hospital.create!(hospital_id: '1', hospital_name: 'Our Hope', address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state, hospital_type: 'Clinic')
Employee.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, start_date: Date.new(1998,1,15))

# Student.create!(last_name: 'Jefferson', first_name: 'Billy', enrollment_date: Date.new(2002,8,10))


#Department.create!(name: 'AU NightCoders', budget: 1250, start_date: Date.new(2002,1,1), instructor_id: Instructor.last.id)


# Course.create!(number: 4554, title: 'Spin Doctor', credits: 3, department_id: Department.last.id)

# Course.create!(number: 5554, title: 'Code Pirates', credits: 3,  department_id: Department.last.id)

# Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.first.id)

# Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.last.id)

# Enrollment.create!(grade: 'B', student_id: Student.first.id, course_id: Course.first.id)
