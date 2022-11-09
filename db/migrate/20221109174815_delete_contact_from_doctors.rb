class DeleteContactFromDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :contact
  end
end
