class UserLocationJoin < ActiveRecord::Base
  # == Associations
  belongs_to :user
  belongs_to :location
end
