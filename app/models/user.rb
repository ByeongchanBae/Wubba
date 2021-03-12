class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchers, class_name: "Match", foreign_key: "matcher_id"
  has_many :matchees, class_name: "Match", foreign_key: "matchee_id"
  has_many :posts, dependent: :destroy

  def possibles
    potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end



    flat_matches = potential_matches.flatten
    unique_matches = flat_matches.uniq
    without_me = unique_matches.reject { |user| user == self }
    already_matched = without_me.reject do |user|
      Match.find_by(matcher: self, matchee: user)
    end
    already_matched
    # users_w_tech_tack = User.where(tech_stack: self.tech_stack)

    # matches = Match.where.not(matcher: self)
    # matches = matches.where.not(status: 2)
    # matches.select{ |match| match.matcher.tech_stacks.include?(self.tech_stacks) }
  end

  def matches
   (matchers.where(status: 2) + matchees.where(status: 2)).uniq
  end

end
