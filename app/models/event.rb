class Event < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :group
  validates :name, presence: true
  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }
end
