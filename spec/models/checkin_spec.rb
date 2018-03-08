require 'rails_helper'

describe Checkin do
  describe 'validations' do
    describe 'validate associations' do
      it { should belong_to(:person) }
      it { should belong_to(:event) }
      it { should belong_to(:user) }
    end
  end
end
