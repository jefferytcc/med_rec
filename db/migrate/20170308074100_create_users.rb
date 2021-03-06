class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.string :full_name
      t.string :identity_card
      t.string :street_address
      t.string :postcode
      t.string :city
      t.string :country
      t.string :contact_number
      t.string :email
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
