require 'rails_helper'

describe League do
  describe 'validations' do
    describe 'validate associations' do
      it { should have_many(:event_leagues) }
      it { should have_many(:events).through(:event_leagues) }
      it { should have_many(:league_people) }
      it { should have_many(:people).through(:league_people) }
    end
  end
end
