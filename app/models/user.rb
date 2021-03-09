class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchers, class_name: "Match", foreign_key: "matcher_id"
  has_many :matchees, class_name: "Match", foreign_key: "matchee_id"
end
