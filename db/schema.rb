

ActiveRecord::Schema.define(version: 2018_02_24_203151) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "attendee"
    t.string "organizer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
