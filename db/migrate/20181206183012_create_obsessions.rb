class CreateObsessions < ActiveRecord::Migration[5.1]
  def change
    create_table :obsessions do |t|
      t.integer :stalker_id
      t.integer :victim_id

      t.timestamps
    end
  end
end
