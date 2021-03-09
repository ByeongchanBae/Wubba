class Match < ApplicationRecord
  belongs_to :matcher, class_name: "User"
  belongs_to :matcheee, class_name: "User"
  has_many :match_messages
end
