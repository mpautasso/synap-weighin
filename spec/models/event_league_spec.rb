require 'rails_helper'

describe EventLeague do
  describe 'validations' do
    describe 'validate associations' do
      it { should belong_to(:event) }
      it { should belong_to(:league) }
    end
  end
end
