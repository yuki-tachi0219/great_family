class CreateGreatGrandParents < ActiveRecord::Migration[6.1]
  def change
    create_table :great_grand_parents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender

      t.timestamps
    end
  end
end
