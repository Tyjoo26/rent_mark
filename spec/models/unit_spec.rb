require 'rails_helper'

RSpec.describe Unit, type: :model do
  context "validations" do
    it "is valid with first_name and last_name" do
      user = build(:user)

      expect(user).to be_valid
    end
  end
end
