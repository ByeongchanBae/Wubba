class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchers, class_name: "Match", foreign_key: "matcher_id"
  has_many :matchees, class_name: "Match", foreign_key: "matchee_id"
  has_many :posts, dependent: :destroy
  has_many :notifications, foreign_key: :recipient_id

  def possibles
    potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end
    flat_matches = potential_matches.flatten
    unique_matches = flat_matches.uniq
    without_me = unique_matches.reject { |user| user == self }
    already_matched = without_me.reject do |user|
      Match.find_by(matcher: self, matchee: user) || Match.find_by(matchee: self, matcher: user, status: [0, 2])
    end
    already_matched
  end

  def matches
    Match.where(status: 2, matchee: self).or(Match.where(status: 2, matcher: self)).uniq
  end
end
