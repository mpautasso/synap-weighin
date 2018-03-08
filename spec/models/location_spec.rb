require 'rails_helper'

describe Location do
  describe 'validations' do
    describe 'validate associations' do
      it { should have_many(:user_location_joins) }
      it { should have_many(:users).through(:user_location_joins) }
    end
  end
end
