class AddExperienceLevelToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :experience_level, :string
  end
end
