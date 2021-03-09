class UserSelection < ApplicationRecord
  belongs_to :user
  belongs_to :tech_stack

  validates :experience, presence: true
  validates :objective, presence: true
end
