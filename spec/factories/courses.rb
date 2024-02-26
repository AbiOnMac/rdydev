FactoryBot.define do
  factory :course do
    name { "Bachelor of Software Engineering" }
    description { "This is a course of software engineering" }
    number_of_semesters { 1 }
    start_date { "2024-02-25" }
    end_date { "2024-02-25" }
    allocation { 1 }
  end
end
