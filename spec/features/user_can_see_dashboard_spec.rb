describe "as a user" do
  context "when i log in" do
    scenario "I see my account details, my rent" do
      user = create(:user)
      stub_logged_in_user(user)
      visit dashboard_path
      # binding.pry
      expect(page).to have_content("Welcome, #{user.first_name}!")
    end
  end
end
