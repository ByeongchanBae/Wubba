class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.string :reply
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
