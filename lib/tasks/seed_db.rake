

  desc 'Create basic role objects'
    task :seed_db  => :environment do
      a = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(1).id)
      a.save

      b = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(2).id)
      b.save


      c = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(3).id)
      c.save

      d = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(4).id)
      d.save


      e = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(5).id)
      e.save


      f = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(6).id)
      f.save


      g = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(7).id)
      g.save


      h = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(8).id)
      h.save


      i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(9).id)
      i.save


      k = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(10).id)
      k.save


      y = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(11).id)
      y.save

      i = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(12).id)
      i.save


      w = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(13).id)
      w.save


      ba = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(14).id)
      ba.save


      aa = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(15).id)
      aa.save


      baw = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(16).id)
      baw.save

      batrew= User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "123", unit_id: Unit.find(17).id)
      batrew.save
    end
