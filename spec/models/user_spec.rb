require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    scenario "user must have first_name" do
      user = User.new(email: "23", last_name: "j", phone_number: "23")

      expect(user).to_not be_valid
    end

    scenario "user must have last_name" do
      user = User.new(email: "23", first_name: "j", phone_number: "23")

      expect(user).to_not be_valid
    end

    scenario "user must have email" do
      user = User.new(first_name: "23", last_name: "j", phone_number: "23")

      expect(user).to_not be_valid
    end

    scenario "user must have phone_number" do
      user = User.new(first_name: "23", last_name: "j", email: "23")

      expect(user).to_not be_valid
    end

    scenario "user has all attributes" do
      user = User.new(first_name: "23", last_name: "j", email: "23", phone_number: "123")

      expect(user).to be_valid
    end

    scenario "user must have unique email" do
      user_1 = User.create(first_name: "23", last_name: "j", email: "23", phone_number: "123")
      user_2 = User.new(first_name: "13", last_name: "b", email: "23", phone_number: "123")

      expect(user_2).to_not be_valid
    end

    scenario "user must have unique phone number" do
      user = User.create(first_name: "23", last_name: "j", email: "23", phone_number: "123")

      user_2 = User.new(first_name: "13", last_name: "b", email: "13", phone_number: "123")

      expect(user_2).to_not be_valid
    end
  end
end
