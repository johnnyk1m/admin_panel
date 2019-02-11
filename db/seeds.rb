# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

edu = ["Highschool Diploma", "Bachelor's Degree", "Master's Degree", "Ph.D"]

User.destroy_all
User.create(email: "admin@panel.com", password: "adminadmin")

Teacher.destroy_all
Teacher.create(first_name: "Chuck", last_name: "Norris", age: 78, salary: 999998, education: "Ph.D")
Teacher.create(first_name: "Bruce", last_name: "Lee", age: 33, salary: 999999, education: "Ph.D")
Teacher.create(first_name: "Shaggy", last_name: "Rogers", age: 40, salary: 950000, education: "Ph.D")


Student.create(first_name: "John", last_name: "Smith", age: 30, education: "Highschool Diploma")
Student.create(first_name: "Jane", last_name: "Doe", age: 26, education: "Bachelor's Degree")
Student.create(first_name: "John", last_name: "Doe", age: 22, education: "Master's Degree")

Course.create(name: "Ruby on Rails 101", hours: 400)


19.times do
  Teacher.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.number(2),
  salary: Faker::Number.number(6),
  education: "#{edu[rand(0..3)]}")
end

89.times do
  Student.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.number(2),
  education: "#{edu[rand(0..3)]}")
end

19.times do
  Course.create(
    name: Faker::Educator.course,
    hours: Faker::Number.number(3)
  )
end