# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clearing existing data
Student.destroy_all
Title.destroy_all

# Adding titles
Title.create!(name: "Mr.")
Title.create!(name: "Mrs.")
Title.create!(name: "Dr.")

# Adding 10 students details
Student.create!(
  [
    {first_name: "John", last_name: "Doe", email: "john.doe@example.com", birth_date: Date.parse("1990-01-01"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", birth_date: Date.parse("1991-02-15"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Alice", last_name: "Johnson", email: "alice.johnson@example.com", birth_date: Date.parse("1989-07-10"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Bob", last_name: "Williams", email: "bob.williams@example.com", birth_date: Date.parse("1992-04-25"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Eva", last_name: "Brown", email: "eva.brown@example.com", birth_date: Date.parse("1988-11-18"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "David", last_name: "Miller", email: "david.miller@example.com", birth_date: Date.parse("1993-09-05"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Sophia", last_name: "Jones", email: "sophia.jones@example.com", birth_date: Date.parse("1990-12-20"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Michael", last_name: "Wilson", email: "michael.wilson@example.com", birth_date: Date.parse("1987-06-30"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Olivia", last_name: "Davis", email: "olivia.davis@example.com", birth_date: Date.parse("1994-03-12"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Daniel", last_name: "Taylor", email: "daniel.taylor@example.com", birth_date: Date.parse("1989-08-22"), gender: "Male", title: Title.find_by(name: "Dr.")},
    {first_name: "Emily", last_name: "Moore", email: "emily.moore@example.com", birth_date: Date.parse("1991-05-08"), gender: "Female", title: Title.find_by(name: "Dr.")},
    {first_name: "William", last_name: "Anderson", email: "william.anderson@example.com", birth_date: Date.parse("1995-08-03"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Emma", last_name: "Johnson", email: "emma.johnson@example.com", birth_date: Date.parse("1992-11-15"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Joseph", last_name: "Clark", email: "joseph.clark@example.com", birth_date: Date.parse("1988-04-28"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Sophie", last_name: "Baker", email: "sophie.baker@example.com", birth_date: Date.parse("1993-01-10"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Ryan", last_name: "Smith", email: "ryan.smith@example.com", birth_date: Date.parse("1986-09-22"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Ava", last_name: "White", email: "ava.white@example.com", birth_date: Date.parse("1997-06-17"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Christopher", last_name: "Moore", email: "christopher.moore@example.com", birth_date: Date.parse("1989-12-08"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Mia", last_name: "Davis", email: "mia.davis@example.com", birth_date: Date.parse("1994-03-25"), gender: "Female", title: Title.find_by(name: "Mrs.")},
    {first_name: "Jonathan", last_name: "Johnson", email: "jonathan.johnson@example.com", birth_date: Date.parse("1987-07-20"), gender: "Male", title: Title.find_by(name: "Mr.")},
    {first_name: "Isabella", last_name: "Wilson", email: "isabella.wilson@example.com", birth_date: Date.parse("1996-02-12"), gender: "Female", title: Title.find_by(name: "Mrs.")}
  ]
)
