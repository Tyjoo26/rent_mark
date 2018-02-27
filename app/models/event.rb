class Event < ApplicationRecord
  has_many :event_users
  has_many :users, :through => :event_users


  validates_presence_of :name, :details, :date


end
