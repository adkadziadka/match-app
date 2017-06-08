FactoryGirl.define do
  factory :student do
  	name			{ Faker::Name.first_name }
    email    	{ Faker::Internet.email }
    password 	{ Faker::Internet.password }
  end
end