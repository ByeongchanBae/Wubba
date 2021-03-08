class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
