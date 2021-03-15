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


  def matches
   (matchers.where(status: 2) + matchees.where(status: 2)).uniq
  end

# a search is a tech_stack
  def self.search(search, current_user)
    if search
      tech_stack = TechStack.find(search)
      possibles(tech_stack.users, current_user)
    end
  end

  private

    def self.possibles(potential_matches, current_user)
    without_me = potential_matches.uniq.reject { |user| user == current_user }
    already_matched = without_me.reject do |user|
      Match.find_by(matcher: current_user, matchee: user) || Match.find_by(matchee: current_user, matcher: user, status: [0, 2])
    end
    already_matched
  end

  def matches
    Match.where(status: 2, matchee: self).or(Match.where(status: 2, matcher: self)).uniq
  end
end
