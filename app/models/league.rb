class League < ActiveRecord::Base
  # == Associations
  has_many :event_leagues
  has_many :events, through: :event_leagues
  has_many :league_people
  has_many :people, through: :league_people
end
