class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :matcher, null: false, foreign_key: { to_table: :users }
      t.references :matchee, null: false, foreign_key: { to_table: :users }
      t.integer :status

      t.timestamps
    end
  end
end
