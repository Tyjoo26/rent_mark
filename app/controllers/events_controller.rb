class EventsController < ApplicationController

  def index
    @events = Event.all
  end


  def attend
    @event = Event.find(params[:id])
    if @event.users.include?(current_user) == true
      flash[:alert] = "You've already RSVPed!"
      redirect_to events_path
    else @event.users << current_user
      flash[:success] = "You've saved a spot!"
      redirect_to events_path
    end
  end
end
