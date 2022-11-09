class DeleteAppointmentIdFromDocAndPatient < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :appointment_id
    remove_column :patients, :appointment_id
  end
end
