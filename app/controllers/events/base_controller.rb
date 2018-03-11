module Events
  class BaseController < ApplicationController
    before_action :set_event

    def set_event
      @event = Event.find params[:event_id]
    end
  end
end
