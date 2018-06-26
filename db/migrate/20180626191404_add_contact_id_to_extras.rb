class AddContactIdToExtras < ActiveRecord::Migration
  def change
    add_reference :extras, :contact, index: true, foreign_key: true
  end
end
