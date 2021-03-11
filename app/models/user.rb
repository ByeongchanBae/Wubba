class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchers, class_name: "Match", foreign_key: "matcher_id"
  has_many :matchees, class_name: "Match", foreign_key: "matchee_id"
  has_many :matches
  has_many :posts, dependent: :destroy

  def possibles
  potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end
  flat_matches = potential_matches.flatten
  unique_matches = flat_matches.uniq
  unique_matches.reject { |user| user == self }
  end



  # def matches
  #   liked_account_ids = Match.where(user_id: self.id).map(&:liked_account_ids)
  #   likes_me_account_ids = Match.where(liked_account_ids  self.id).map(&:user_id)
  #   matched_ids = liked_account_ids.select { |id| likes_me_account_ids.include?(id)}
  #   User.where(id: matched_ids)
  # end
end
