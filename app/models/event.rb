class Event < ApplicationRecord
  geocoded_by :address
  mount_uploader :photo, PhotoUploader
  belongs_to :group
  validates :name, presence: true
  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }
  after_validation :geocode, if: :will_save_change_to_address?
end
