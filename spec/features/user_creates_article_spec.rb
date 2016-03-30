require "rails_helper"

feature "User creates article" do
  scenario "through the new article page" do
    user = create(:user)
    login_as(user)
    visit new_article_path

    fill_in "Title", with: "My New Title"
    fill_in "Body", with: "This is a body"
    click_on "Create Article"

    expect(page).to have_content("My New Title")
    expect(page).to have_content("Written by #{user.email}")
  end
end
