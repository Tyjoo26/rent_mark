describe "as a user" do
  context "when i log in" do
    scenario "I see my account details, my rent" do
      unit = create(:unit, rent: 100, unit_type: "1bdr")
      user = create(:user, unit: unit)

      stub_logged_in_user(user)
      visit dashboard_path

      expect(page).to have_content("Edit Account Details")
      click_link("Edit Account Details")

      expect(current_path).to eq(edit_user_path)

      
    end
  end
end
