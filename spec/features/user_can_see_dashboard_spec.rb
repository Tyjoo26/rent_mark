describe "as a user" do
  context "when i log in" do
    scenario "I see my account details, my rent" do
      unit = create(:unit, rent: 100, unit_type: "1bdr")
      user = create(:user, unit: unit)

      stub_logged_in_user(user)
      visit dashboard_path

      expect(page).to have_content("Welcome, #{user.first_name}!")
      expect(page).to have_content("Rent: $#{user.unit.rent}")
      expect(page).to have_content("Rent is due: #{user.unit.unit_due_date}")
    end
  end
end
