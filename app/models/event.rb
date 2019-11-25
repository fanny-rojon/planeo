class Event < ApplicationRecord
  geocoded_by :address
  mount_uploader :photo, PhotoUploader

  belongs_to :group
  belongs_to :organizer, class_name: "User"

  has_many :comments, dependent: :destroy
  has_many :usergroups, through: :group
  has_many :event_dates, dependent: :destroy, inverse_of: :event

  validates :name, length: { in: 4..24 }
  validates :comment, length: { maximum: 44 }

  validates :state, inclusion: { in: ["proposed", "organized", "confirmed", "past"] }

  after_validation :geocode, if: :will_save_change_to_address?
  after_update :geocode

  accepts_nested_attributes_for :event_dates

  scope :organized, -> { where(state: :organized) }
  scope :not_organized, -> { where.not(state: :organized) }
  scope :organized_by, ->(user) { organized.where(organizer: user) }
  scope :not_organized_by, ->(user) { organized.where.not(organizer: user) }
  scope :proposed, -> { where(state: :proposed) }
end
