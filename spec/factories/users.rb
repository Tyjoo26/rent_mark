

FactoryBot.define do
  factory :user do
    provider "google"
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    token "MyString"
    refresh_token "MyString"
    oauth_expires_at "2018-02-26 08:17:32"
  end
end
