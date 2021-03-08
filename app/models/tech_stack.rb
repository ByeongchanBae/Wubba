class TechStack < ApplicationRecord
  has_many :user_selections

  validates :name, presence: true
end
