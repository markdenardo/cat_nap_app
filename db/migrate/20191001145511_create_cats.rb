class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.boolean :adopt
      t.integer :chill

      t.timestamps
    end
  end
end
