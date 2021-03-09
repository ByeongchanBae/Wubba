class TechStack < ApplicationRecord
  has_many :user_selections
  has_many :users, through: :user_selections
  validates :name, presence: true
end
