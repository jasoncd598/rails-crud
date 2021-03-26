class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.integer :phone_number

      t.timestamps
    end
  end
end
