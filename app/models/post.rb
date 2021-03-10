class Post < ApplicationRecord
  belongs_to :user
  has_many :comment

  validates :description, presence: true
  validates :title, presence: true
end
