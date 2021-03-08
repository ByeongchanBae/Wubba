class CreateGroupMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :group_messages do |t|
      t.string :content

      t.timestamps
    end
  end
end
