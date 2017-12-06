class SimulationAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :simulation
  has_many :answer_lists
end
