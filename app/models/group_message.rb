class GroupMessage < ApplicationRecord
  has_many :users, :through => :group_members

  validates :content, presence: true
end
