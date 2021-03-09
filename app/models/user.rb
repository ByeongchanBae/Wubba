class User < ApplicationRecord
  has_many :user_selections, dependent: :destroy
  has_many :tech_stacks, through: :user_selections
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def possibles
  potential_matches = tech_stacks.map do |tech_stack|
    tech_stack.users
    end
  potential_matches.uniq
  me = potential_matches.find(params[:current_user])
  me.destroy
  end
end
