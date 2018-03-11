class Event < ActiveRecord::Base
  # == Associations
  has_many :checkins
  has_many :people, -> { distinct }, through: :checkins
  has_many :event_leagues
  has_many :leagues, through: :event_leagues

  # == Scope methods
  default_scope { order(created_at: :asc) }
end
