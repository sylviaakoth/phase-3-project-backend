class AddNewContactsToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :contact, :string
  end
end
