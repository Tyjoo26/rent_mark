class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :attendee
      t.string :organizer

      t.timestamps
    end
  end
end
