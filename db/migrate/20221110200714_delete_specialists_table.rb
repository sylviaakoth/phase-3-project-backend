class DeleteSpecialistsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :specialists
  end
end
