class Event < ApplicationRecord
  belongs_to :group
  validates :name, presence: true
  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }
end
