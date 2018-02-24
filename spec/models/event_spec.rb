require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validations' do
    scenario "event is not valid without name" do
      event = Event.new(organizer: "sam")

      expect(event).to_not be_valid
    end

    scenario "event is not valid without organizer" do
      event = Event.new(name: "sam")

      expect(event).to_not be_valid
    end

    scenario " event is valid with organizer and name" do
      event = Event.new(name: "SAM", organizer: "SAM")

      expect(event).to be_valid
    end
  end
end
