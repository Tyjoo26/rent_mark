require_relative '../../db/seeder.rb'

desc 'Create basic role objects'
  task :seed_db  => :environment do
    Seeder.new.seed_db
  end
