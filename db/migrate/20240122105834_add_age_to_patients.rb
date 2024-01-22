class AddAgeToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :age, :integer
  end
end
