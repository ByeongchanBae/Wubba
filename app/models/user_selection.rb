class UserSelection < ApplicationRecord
  belongs_to :user
  belongs_to :tech_stack
end
