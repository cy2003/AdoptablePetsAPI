class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :pet_type
      t.string :name
      t.string :sex
      t.string :breed
      t.integer :age
      t.text :bio
      t.integer :rescue_id
      t.string :image

      t.timestamps
    end
  end
end
