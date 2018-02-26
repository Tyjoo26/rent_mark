class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :unit_number
      t.string :unit_type
      t.string :rent

      t.timestamps
    end
  end
end
