FactoryBot.define do
  factory :unit do
    unit_number "MyString"
    unit_type "MyString"
    rent "MyString"
    rent_due_date Date.current
  end
end
