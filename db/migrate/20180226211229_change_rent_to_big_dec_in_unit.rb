class ChangeRentToBigDecInUnit < ActiveRecord::Migration[5.2]
  def change
    change_column :units, :rent, :decimal
  end
end
