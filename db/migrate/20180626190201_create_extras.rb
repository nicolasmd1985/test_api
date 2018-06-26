class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :movie
      t.string :art
      t.string :music

      t.timestamps null: false
    end
  end
end
