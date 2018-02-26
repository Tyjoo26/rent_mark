class AddRentDateToUnit < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :rent_due_date, :string
  end
end
