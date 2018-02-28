class ChargesController < ApplicationController

  def new

  end

  def create
    @amount = (current_user.unit.rent_due * 100).round
    customer = StripeService.initiate_customer(params[:stripeEmail], params[:stripeToken])
    begin
      StripeService.initiate_charge(customer, @amount, current_user.unit.unit_number)
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
      current_user.unit.update(rent_due: 0)
  end


end
