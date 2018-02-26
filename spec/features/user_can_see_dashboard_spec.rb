describe "as a user" do
  context "when i log in" do
    scenario "I see my account details, my rent" do
      stub_logged_in_user(create(:user))
      visit dashboard_path

      expect(page).to have_content("Welcome, #{user.first_name}!")
    end
  end
end
