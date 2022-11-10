class AddDoctorsIdAndPatientsIdColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :doctor_id, :integer
    add_column :appointments, :patient_id, :integer

  end
end
