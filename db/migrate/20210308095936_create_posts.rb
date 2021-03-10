class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
