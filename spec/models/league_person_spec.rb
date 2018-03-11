require 'rails_helper'

describe LeaguePerson do
  describe 'validations' do
    describe 'validate associations' do
      it { should belong_to(:league) }
      it { should belong_to(:person) }
    end
  end
end
