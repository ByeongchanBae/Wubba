class CreateTechStacks < ActiveRecord::Migration[6.0]
  def change
    create_table :tech_stacks do |t|
      t.string :name

      t.timestamps
    end
  end
end
