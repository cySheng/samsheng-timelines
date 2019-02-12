FactoryBot.define do
  factory :timeline do
    event "This was their first outing together."

    trait :invalid do
      event nil
    end
  end
end
