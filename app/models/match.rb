class Match < ApplicationRecord
  belongs_to :matcher, class_name: "User"
  belongs_to :matchee, class_name: "User"
  has_many :match_messages


  validates_uniqueness_of :matchee_id, scope: :matcher_id
end
