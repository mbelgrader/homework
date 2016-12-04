class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :house_id, foreign_key: true

      t.timestamps
    end
  end
end
