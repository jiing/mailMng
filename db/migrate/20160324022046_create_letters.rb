class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.integer :category_id
      t.integer :user_id
      t.time :received_time

      t.timestamps null: false
    end
  end
end
