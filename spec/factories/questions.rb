FactoryBot.define do
  factory :question do
    statement "MyText"
    status 1
    source "MyString"
    user nil
    area 1
  end
end
