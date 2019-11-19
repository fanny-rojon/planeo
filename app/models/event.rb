class Event < ApplicationRecord
  belongs_to :group
  has_many :usergroups, through: :group
  has_one :user, through: :group
  validates :name, presence: true
  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }
end
