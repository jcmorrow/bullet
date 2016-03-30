require "rails_helper"

feature "Sign Up" do
  scenario "from sign up page" do
    visit sign_up_path
    fill_in("Email", with: "josh@jcmorrow.com")
    fill_in("Password", with: "p4ssw0rd")
    click_on "Sign up"

    expect(User.count).to eq(1)
    expect(page).to have_content("josh@jcmorrow.com")
  end
end
