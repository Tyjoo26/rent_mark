require 'rails_helper'

RSpec.describe Event, type: :model do
  context "validations " do
    it "is valid with name, details date" do
      event = build(:event)

      expect(event).to be_valid
    end

    it "is ivalid without name" do
      event = Event.new(details: "string", date: Date.current)

      expect(event).to_not be_valid
    end

    it "is ivalid without date" do
      event = Event.new(details: "string", name: "shit")

      expect(event).to_not be_valid
    end

    it "is ivalid without details" do
      event = Event.new(name: "string", date: Date.current)

      expect(event).to_not be_valid
    end
  end
end
