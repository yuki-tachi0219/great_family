class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :parent_id
      t.integer :seminar_id

      t.timestamps
    end
  end
end
