class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :users_id
      t.integer :photos_id

      t.timestamps
    end
  end
end
