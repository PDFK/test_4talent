FactoryBot.define do
  factory :postulation do
    user { FactoryBot.create(:user) }
    benefit { FactoryBot.create(:benefit) }
  end
end
