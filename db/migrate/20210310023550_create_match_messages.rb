class CreateMatchMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :match_messages do |t|
      t.string :content
      t.references :match, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
