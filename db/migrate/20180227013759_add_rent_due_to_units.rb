class AddRentDueToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :rent_due, :decimal
  end
end
