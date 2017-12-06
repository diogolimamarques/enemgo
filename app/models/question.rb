class Question < ApplicationRecord
  enum status: [:pendent, :rejected, :accepted, :annulled]
  enum area: [:human_studies, :math, :languages, :natural_sciences ]
  has_many :exam_questions
  has_one :solution 
  has_many :alternatives
  has_many :tickets
  has_many :user_answers
  belongs_to :user
end
