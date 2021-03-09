class CreateMatchMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :match_messages do |t|
      t.references :match_id, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
