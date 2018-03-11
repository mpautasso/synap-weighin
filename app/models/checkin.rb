class Checkin < ActiveRecord::Base
  # == Associations
  belongs_to :person
  belongs_to :event
  belongs_to :user
end
