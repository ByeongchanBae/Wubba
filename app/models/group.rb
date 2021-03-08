class Group < ApplicationRecord
  has_many :group_member
  has_many :users, through: :group_members

  validates :name, presence: true
end
