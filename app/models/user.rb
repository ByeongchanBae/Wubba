class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def possibles
  potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end
  flat_matches = potential_matches.flatten
  unique_matches = flat_matches.uniq
  unique_matches.reject { |user| user == self }
  end
end
