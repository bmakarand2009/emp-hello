# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    sequence(:first_name) { |n| "first_name#{n}" }
    sequence(:last_name)  { |n| "last_name#{n}" }
    sequence(:emp_id) { SecureRandom.uuid }  # this must be < 40
    icon nil
    created_at { 1.hour.ago }
    updated_at { 1.hour.ago }
  end
end
