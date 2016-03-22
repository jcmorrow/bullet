require "rails_helper"

feature "Smoke test" do
  scenario "by visiting the home page" do
    visit root_path
  end
end
