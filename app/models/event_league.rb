class EventLeague < ActiveRecord::Base
  # == Associations
  belongs_to :event
  belongs_to :league
end
