class Unit < ApplicationRecord

  validates_presence_of :unit_number, :unit_type, :rent
  validates_uniqueness_of :unit_number

  has_many :users

  def unit_due_date
    rent_due_date >> 1
  end

end
