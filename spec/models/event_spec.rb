require 'rails_helper'

describe Event do
  describe 'validations' do
    describe 'validate associations' do
      it { should have_many(:checkins) }
      it { should have_many(:people).through(:checkins) }
    end
  end

  describe 'default scope' do
    let!(:first_event) { create(:event, name: 'First Event') }
    let!(:second_event) { create(:event, name: 'Second Event') }

    it 'orders by ascending name' do
      events = Event.all

      expect(events).to eq([first_event, second_event])
    end
  end
end
