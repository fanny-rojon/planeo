class Event < ApplicationRecord
  geocoded_by :address
  mount_uploader :photo, PhotoUploader
  belongs_to :group
  has_many :usergroups, through: :group
  has_many :event_dates, dependent: :destroy, inverse_of: :event
  belongs_to :organizer, class_name: "User"
  validates :name, length: { in: 4..24 }
  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }
  after_validation :geocode, if: :will_save_change_to_address?
  after_update :geocode
  accepts_nested_attributes_for :event_dates
end
