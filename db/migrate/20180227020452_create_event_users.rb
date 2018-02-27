class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer       :total_available
      t.integer       :current_total
    end
  end
end
