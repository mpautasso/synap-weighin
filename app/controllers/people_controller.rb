class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)

    redirect_to root_path
  end

  def show
    @person = Person.find params[:id]
  end

  private

  def person_params
    params.required(:person).permit([:name])
  end
end
