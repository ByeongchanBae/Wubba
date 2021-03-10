class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchers, class_name: "Match", foreign_key: "matcher_id"
  has_many :matchees, class_name: "Match", foreign_key: "matchee_id"

  def possibles
  potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end
  flat_matches = potential_matches.flatten
  unique_matches = flat_matches.uniq
  unique_matches.reject { |user| user == self }
  end

end
