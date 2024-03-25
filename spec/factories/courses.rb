FactoryBot.define do
  factory :course do
    name { "MyString" }
    description { "MyText" }
    number_of_semesters { 1 }
    start_date { "2024-03-25" }
    end_date { "2024-03-25" }
    allocation { 1 }
  end
end
