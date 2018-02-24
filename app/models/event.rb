class Event < ApplicationRecord
  validates_presence_of :name, uniqueness: true
  validates_presence_of :organizer
end
