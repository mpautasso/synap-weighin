module Events
  class CheckinsController < Events::BaseController
    def new
      @checkin = @event.checkins.new
    end

    def new
      @checkin = @event.checkins.new
    end

    def create
      person = Person.find(checkin_params[:person_id])
      @checkin = CreateCheckin.call(person, @event, checkin_params[:weight].to_f, current_user)

      redirect_to event_path(@event)
    rescue
      flash[:error] = 'Please fill out all fields'
      redirect_to new_event_checkin_path(@event)
    end

    private

    def checkin_params
      params.require(:checkin).permit(:weight, :person_id)
    end
  end
end
