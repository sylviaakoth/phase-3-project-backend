class DeleteDoctorsIdAndPatientsId < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :patients_id
    remove_column :appointments, :doctors_id
  end
end
