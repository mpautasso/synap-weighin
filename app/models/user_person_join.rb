class UserPersonJoin < ActiveRecord::Base
  # == Associations
  belongs_to :user
  belongs_to :person
end
