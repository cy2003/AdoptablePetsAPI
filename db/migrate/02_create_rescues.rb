class CreateRescues < ActiveRecord::Migration[5.0]
  def change
    create_table :rescues do |t|
      t.integer :user_id
      t.string :organization_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :website
      t.integer :phone

      t.timestamps
    end
  end
end
