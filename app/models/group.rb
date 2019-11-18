class Group < ApplicationRecord
  has_many :usergroups, dependent: :destroy
  has_many :users, through: :usergroups
  has_many :events, dependent: :destroy
  validates :name, presence: true
end
