class Seeder
  include FactoryBot::Syntax::Methods

  def seed_db
    Event.create(name: "Breakfast2Go", details: "Breakfast in the Lobby", date: Faker::Date.forward(30))
    Event.create(name: "Pool Party", details: "Enjoy Drinks and Food at the Pool", date: Faker::Date.forward(60))
    Event.create(name: "Wine and Cheese", details: "Enjoy Wine and Cheese at our Mixer", date: Faker::Date.forward(75))
    Event.create(name: "Meet your Neighbors!", details: "Meet your neighbors!", date: Faker::Date.forward(80))
    Event.create(name: "Movie Night!", details: "Watch Cheech and Chong!", date: Faker::Date.forward(14))
    Event.create(name: "Quarterly Social", details: "Take a break at our Quarterly Social", date: Faker::Date.forward(27))

    Unit.create(unit_number: "A1", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A2", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A3", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A4", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A5", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A6", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A17", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A8", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A9", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)
    Unit.create(unit_number: "A10", unit_type: "1Bdr", rent: 975.25, rent_due_date: Date.current, rent_due: 975.25)

    Unit.create(unit_number: "B1", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B2", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B3", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B4", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B5", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B6", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B7", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)
    Unit.create(unit_number: "B8", unit_type: "Studio", rent: 865.00, rent_due_date: Date.current, rent_due: 865.00)

    u1 = Unit.find(1)
    a = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u1.id)
    a.save

    u2 = Unit.find(2)
    b = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u2.id)
    b.save

    u3 = Unit.find(3)
    c = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u3.id)
    c.save

    u4 = Unit.find(4)
    d = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u4.id)
    d.save

    u5 = Unit.find(5)
    e = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u5.id)
    e.save

    u6 = Unit.find(6)
    f = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u6.id)
    f.save

    u7 = Unit.find(7)
    g = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u7.id)
    g.save

    u8 = Unit.find(8)
    h = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u8.id)
    h.save

    u9 = Unit.find(9)
    i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u9.id)
    i.save

    u10 = Unit.find(10)
    k = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u10.id)
    k.save

    u11 = Unit.find(11)
    y = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u11.id)
    y.save

    u12 = Unit.find(12)
    i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u12.id)
    i.save

    u13 = Unit.find(13)
    w = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u13.id)
    w.save

    u14 = Unit.find(14)
    ba = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u14.id)
    ba.save

    u15 = Unit.find(15)
    aa = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u15.id)
    aa.save

    u16 = Unit.find(16)
    baw = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u16.id)
    baw.save

    u17 = Unit.find(17)
    batrew= User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123", unit_id: u17.id)
    batrew.save
  end
end
