class CreateNaps < ActiveRecord::Migration[6.0]
  def change
    create_table :naps do |t|
      t.integer :user_id
      t.integer :cat_id
      t.string :day
      t.string :location

      t.timestamps
    end
  end
end
