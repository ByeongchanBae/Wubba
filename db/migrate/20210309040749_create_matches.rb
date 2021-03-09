class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :matcher, null: false
      t.references :matchee, null: false
      t.integer :status
      t.integer :matcher_status
      t.integer :matchee_status

      t.timestamps
    end
  end
end
