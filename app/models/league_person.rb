class LeaguePerson < ActiveRecord::Base
  # == Associations
  belongs_to :league
  belongs_to :person
end
