# spec/factories/rooms.rb

FactoryGirl.define do
  factory :event do

    name            "jadajadajada"
    description     "Even more jadajadajada"
    location        "Let it be nice"
    price           { Faker::Commerce.price }
    capacity        10
    includes_food   true
    includes_drinks false
    user            { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
