class Simulation < ApplicationRecord
  belongs_to :user
  belongs_to :exam
  has_many :simulation_answers
end
