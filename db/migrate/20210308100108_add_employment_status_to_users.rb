class AddEmploymentStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :employment_status, :string
  end
end
