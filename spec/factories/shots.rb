# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shot do
    caption "MyString"
    description "MyString"
    user_id 1
    likes 1
  end
end
