class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :school_category_id
      t.integer :state_id

      t.timestamps
    end
  end
end
