class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :body

  validates_presence_of :name, :email, :body
end
