FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    birthday { "2019-02-22 14:04:33" }
    email { "MyString" }
    home { "MyString" }
    mobile { "MyString" }
    street_1 { "MyString" }
    street_2 { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    user { nil }
  end
end