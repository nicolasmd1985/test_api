class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :mail
      t.string :address

      t.timestamps null: false
    end
  end
end
