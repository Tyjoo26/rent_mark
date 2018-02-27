require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it "will be a valid user with first_name & last name" do
      user = User.new(first_name: "123", last_name: "123")

      expect(user).to be_valid
    end

    it "will not be valid user without last_name " do
      user = User.new(first_name: "123")

      expect(user).to_not be_valid
    end

    it "will not be valid user without first_name " do
      user = User.new(last_name: "123")

      expect(user).to_not be_valid
    end
  end
end
