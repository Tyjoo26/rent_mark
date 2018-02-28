class StripeService


  def self.initiate_customer(email, token)
      Stripe::Customer.create(
      :email => email,
      :source => token
    )
  end

  def self.initiate_charge(id, amount)
    Stripe::Charge.create(
      :customer => id,
      :amount => amount,
      :description => "#{current_user.unit.unit_number} Rent Payment",
      :currency => 'usd'
    )
  end

end
