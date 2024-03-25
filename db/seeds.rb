# Clearing existing data
Student.destroy_all
Title.destroy_all
# Adding titles
titles = ["Mr.", "Mrs.", "Dr."]
titles.each { |title_name| Title.create!(name: title_name) }
# Adding 10 students details
students_data = [
  {first_name: "John", last_name: "Doe", email: "john.doe@example.com", birth_date: Date.parse("1990-01-01"), gender: "Male", title_name: "Mr."},
  {first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", birth_date: Date.parse("1991-02-15"), gender: "Female", title_name: "Mrs."},
  {first_name: "Alice", last_name: "Johnson", email: "alice.johnson@example.com", birth_date: Date.parse("1989-07-10"), gender: "Female", title_name: "Mrs."},
  {first_name: "Bob", last_name: "Williams", email: "bob.williams@example.com", birth_date: Date.parse("1992-04-25"), gender: "Male", title_name: "Dr."},
  {first_name: "Eva", last_name: "Brown", email: "eva.brown@example.com", birth_date: Date.parse("1988-11-18"), gender: "Female", title_name: "Dr."},
  {first_name: "David", last_name: "Miller", email: "david.miller@example.com", birth_date: Date.parse("1993-09-05"), gender: "Male", title_name: "Mr."},
  {first_name: "Sophia", last_name: "Jones", email: "sophia.jones@example.com", birth_date: Date.parse("1990-12-20"), gender: "Female", title_name: "Mrs."},
  {first_name: "Michael", last_name: "Wilson", email: "michael.wilson@example.com", birth_date: Date.parse("1987-06-30"), gender: "Male", title_name: "Mr."},
  {first_name: "Olivia", last_name: "Davis", email: "olivia.davis@example.com", birth_date: Date.parse("1994-03-12"), gender: "Female", title_name: "Mrs."},
  {first_name: "Daniel", last_name: "Taylor", email: "daniel.taylor@example.com", birth_date: Date.parse("1989-08-22"), gender: "Male", title_name: "Mr."},
  {first_name: "Emily", last_name: "Moore", email: "emily.moore@example.com", birth_date: Date.parse("1991-05-08"), gender: "Female", title_name: "Mrs."}
]

students_data.each do |student_params|
  title = Title.find_by(name: student_params[:title_name])
  student_params.delete(:title_name) # Remove title_name from the student parameters
  Student.create!(student_params.merge(title: title))
end

# destroy all existing courses
Course.destroy_all

# define course data
require "date"

courses_data = [
  {name: "Introduction to Ruby on Rails", description: "Learn the fundamentals of Ruby on Rails development.", number_of_semesters: 1, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-06-25"), allocation: 50},
  {name: "Advanced Web Development", description: "Advanced concepts in web development using Ruby on Rails1.", number_of_semesters: 2, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Artificial Intelligence", description: "Explore the realm of Artificial Intelligence.", number_of_semesters: 3, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Game Development", description: "Learn the essentials of game development.", number_of_semesters: 4, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Graphics Designing", description: "Master the art of graphics designing.", number_of_semesters: 3, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Social", description: "Understand the dynamics of social interactions in the digital age.", number_of_semesters: 2, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Science", description: "Delve into various scientific disciplines.", number_of_semesters: 1, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "History", description: "Explore the rich tapestry of human history.", number_of_semesters: 2, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Learning to Communicate", description: "Enhance your communication skills.", number_of_semesters: 3, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "Computer Science", description: "Dive deep into the field of computer science.", number_of_semesters: 4, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40},
  {name: "JAVA Programming - I", description: "Master Java programming fundamentals.", number_of_semesters: 5, start_date: Date.parse("2024-03-25"), end_date: Date.parse("2024-09-25"), allocation: 40}
]

# Format dates in the array
courses_data.each do |course|
  course[:start_date] = course[:start_date].strftime("%Y-%m-%d")
  course[:end_date] = course[:end_date].strftime("%Y-%m-%d")
end

# Display courses_data
puts courses_data.inspect

# create new course data
courses_data.each do |course_attrs|
  Course.create!(course_attrs)
end
