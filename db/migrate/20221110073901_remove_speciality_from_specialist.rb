class RemoveSpecialityFromSpecialist < ActiveRecord::Migration[6.1]
  def change
    remove_column :specialists, :speciality
  end
end
