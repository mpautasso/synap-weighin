module Events
  class LeaguesController < Events::BaseController
    def index
      @leagues = @event.leagues
    end

    def show
      @league = @event.leagues.find params[:id]
    end

    def new
      @league = @event.leagues.new
    end

    def create
      @league = League.create(league_params)
      @league.events << @event

      redirect_to event_leagues_path(@event)
    end

    private

    def league_params
      params.require(:league).permit(:name)
    end
  end
end
