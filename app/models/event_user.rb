class EventUser < ApplicationRecord
  belongs_to :user
  belong_to  :event 


end
