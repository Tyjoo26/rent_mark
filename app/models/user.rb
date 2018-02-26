class User < ApplicationRecord
  belongs_to :unit, optional: true 

  enum role: [:renter, :manager]

  validates_presence_of :first_name,
                        :last_name

  def self.update_or_create(auth)
    user = User.find_by(uid: auth[:uid]) || User.new

    user.attributes = {
    provider: auth[:provider],
    uid: auth[:uid],
    email: auth[:info][:email],
    first_name: auth[:info][:first_name],
    last_name: auth[:info][:last_name],
    token: auth[:credentials][:token],
    refresh_token: auth[:credentials][:refresh_token],
    oauth_expires_at: auth[:credentials][:expires_at]
    }

    user.save!
    user
  end

  def registered?
    persisted?
  end

end
