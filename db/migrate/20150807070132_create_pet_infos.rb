class CreatePetInfos < ActiveRecord::Migration
  def change
    create_table :pet_infos do |t|
      t.string :pet_name
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :last_visited_date

      t.timestamps null: false
    end
  end
end
