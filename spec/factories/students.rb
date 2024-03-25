FAKE_GENDERS = ["Male", "Female"]

FactoryBot.define do
  factory :student do
    transient do
      full_name { Faker::Name.name }
    end

    transient do
      name_parts { full_name.split }
    end

    first_name { name_parts[0] }
    middle_name { name_parts[1..-2].join(" ") }
    last_name { name_parts[-1] }
    email { Faker::Internet.email }
    birth_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    gender { FAKE_GENDERS.sample }
  end
end
