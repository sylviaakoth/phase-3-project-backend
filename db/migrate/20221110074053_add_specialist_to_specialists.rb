class AddSpecialistToSpecialists < ActiveRecord::Migration[6.1]
  def change
    add_column :specialists, :specialist, :string
  end
end
