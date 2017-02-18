class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.string :pet_id
      t.string :adopter_id

      t.timestamps
    end
  end
end
