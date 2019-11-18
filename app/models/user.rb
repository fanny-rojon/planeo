class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :usergroups, dependent: :destroy
  validates :name, presence: true
  has_many :groups, through: :usergroups
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
