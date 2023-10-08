class CreateGrandChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :grand_children do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :child_id

      t.timestamps
    end
  end
end
