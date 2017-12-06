class Alternative < ApplicationRecord
  belongs_to :question
  has_many :user_answers
end
