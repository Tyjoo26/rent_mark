class Manager::EventsController < ApplicationController
  before_action :set_event, only: [:show,:edit, :update, :destroy]

  def index
    @events = Event.all.order(:id)
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "#{@event.name} has been scheduled!"
      redirect_to manager_events_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    @event.update(event_params)
    if @event.save
      flash[:success] = "#{@event.name} details have been modified!"
      redirect_to manager_event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    flash[:delete] = "Event has been removed from dashboard"
    redirect_to manager_events_path
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :details, :date)
    end


end
