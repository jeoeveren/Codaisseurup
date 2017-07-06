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

    #categories      { build_list(:categories, 3) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end

  end
end
