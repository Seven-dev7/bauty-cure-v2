class CreateUserInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_informations do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.belongs_to :user
      t.timestamps
    end
  end
end
