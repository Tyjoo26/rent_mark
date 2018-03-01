class Unit < ApplicationRecord

  validates_presence_of :unit_number, :unit_type, :rent
  validates_uniqueness_of :unit_number

  has_one :user

  def unit_due_date
    rent_due_date >> 1
  end

  def paid?
    if rent_due == 0
      "Rent Paid"
    else
      rent_due
    end
  end
end
