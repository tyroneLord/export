class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.date :released_on
      t.integer :price

      t.timestamps
    end
  end
end
