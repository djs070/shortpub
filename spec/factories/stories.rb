# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    title "MyString"
    body "MyText"
    author nil
  end
end
