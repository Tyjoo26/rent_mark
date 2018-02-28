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


    a = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    a.save

    b = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    b.save


    c = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    c.save

    d = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    d.save


    e = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    e.save


    f = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    f.save


    g = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    g.save


    h = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    h.save


    i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    i.save


    k = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    k.save


    y = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    y.save

    i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    i.save


    w = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    w.save


    ba = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    ba.save


    aa = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    aa.save


    bat = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123")
    bat.save
  end


end
