class UserSelection < ApplicationRecord
  belongs_to :user
  belongs_to :tech_stack
  has_one_attached :avatar

  validates :experience, presence: true
  validates :objective, presence: true
end
