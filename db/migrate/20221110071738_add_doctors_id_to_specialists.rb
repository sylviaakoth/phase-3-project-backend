class AddDoctorsIdToSpecialists < ActiveRecord::Migration[6.1]
  def change
    add_column :specialists, :doctor_id, :integer 
  end
end
