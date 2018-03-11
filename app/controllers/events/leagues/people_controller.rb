module Events
  module Leagues
    class PeopleController < Events::LeaguesController
      before_action :set_league

      def new
        @person = @league.people.new
      end

      def create
        @person = Person.find params[:person_id]
        @league.people << @person

        redirect_to event_leagues_path(@event)
      end

      private

      def set_league
        @league = League.find params[:league_id]
      end
    end
  end
end
