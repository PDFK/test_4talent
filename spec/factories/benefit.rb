FactoryBot.define do
  factory :benefit do
    name { "Beneficio" }
    amount { rand(100000...50000000) }
    company { FactoryBot.create(:company) }
  end
end
