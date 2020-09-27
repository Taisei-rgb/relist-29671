FactoryBot.define do
  factory :note do
    title { "9/27" }
    content { "hogehoge"}
    association :user
  end
end
