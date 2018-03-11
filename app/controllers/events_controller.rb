class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def create
    @event = Event.create(event_params)

    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :tagline)
  end
end
