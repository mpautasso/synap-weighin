require 'rails_helper'

describe User do
  describe 'validations' do
    describe 'validate associations' do
      it { should have_many(:user_person_joins) }
      it { should have_many(:user_location_joins) }
      it { should have_many(:people).through(:user_person_joins) }
      it { should have_many(:locations).through(:user_location_joins) }
    end
  end
end
