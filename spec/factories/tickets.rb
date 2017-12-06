FactoryBot.define do
  factory :ticket do
    message "MyText"
    motive "MyString"
    user nil
    ticketable nil
  end
end
