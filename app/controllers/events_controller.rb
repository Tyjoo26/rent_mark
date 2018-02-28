class EventsController < ApplicationController
  before_action :set_event, only: [:attend, :remove]
  def index
    @events = Event.all
  end


  def attend
    if @event.users.include?(current_user) == true
      flash[:alert] = "You've already RSVPed!"
      redirect_to events_path
    else @event.users << current_user
      flash[:success] = "You've saved a spot!"
      redirect_to events_path
    end
  end

  def remove
    @event.users.destroy(User.find(params[:user_id]))
    redirect_to manager_event_path(@event)
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end
end
