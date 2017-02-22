class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.datetime :date
      t.text :description
      t.string :image
      t.integer :pet_id

      t.timestamps
    end
  end
end
