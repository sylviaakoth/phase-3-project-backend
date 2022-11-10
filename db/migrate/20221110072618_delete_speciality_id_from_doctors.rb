class DeleteSpecialityIdFromDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :speciality_id
  end
end
