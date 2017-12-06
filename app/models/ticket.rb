class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :ticketable, polymorphic: true
end
