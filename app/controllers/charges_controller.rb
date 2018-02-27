class ChargesController < ApplicationController

  def new

  end

  def create
    @amount = (current_user.unit.rent_due * 100).round

    Stripe.api_key = ENV["stripe_secret"]

    begin
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => @amount,
        :description => "#{current_user.unit.unit_number} Rent Payment",
        :currency => 'usd'
      )
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
      current_user.unit.update(rent_due: 0)
  end


end
