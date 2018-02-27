describe "as a user" do
  context "when i log in" do
    scenario "I see my account details, my rent" do
      unit = create(:unit, rent: 100, unit_type: "1bdr")
      user = create(:user, unit: unit)

      stub_logged_in_user(user)
      visit dashboard_path

      expect(page).to have_content("Account Management")
      expect(page).to have_content("$#{user.unit.rent}")
      expect(page).to have_content("#{user.unit.unit_due_date}")
      expect(page).to have_content("#{user.unit.unit_number}")
      expect(page).to have_content("#{user.unit.rent}")    
    end
  end
end
