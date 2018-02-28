class Manager::UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update]

  def index
    @units = Unit.all.order(:id)
  end

  def show

  end

  def edit

  end

  def update
    if @unit.update(unit_params)
      flash[:alert] = "You've updated #{@unit.unit_number}'s details!"
      redirect_to manager_units_path
    else
      render :edit
    end
  end


  private

    def set_unit
      @unit = Unit.find(params[:id])
    end

    def unit_params
      params.require(:unit).permit(:rent, :rent_due, :rent_due_date)
    end
end
