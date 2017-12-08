class AnswerList < ApplicationRecord
  belongs_to :question
  belongs_to :alternative
  belongs_to :simulation_answer
end
