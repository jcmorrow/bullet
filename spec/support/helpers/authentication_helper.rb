module AuthenticationHelper
  def login_as(user)
    visit sign_in_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end

RSpec.configure do |config|
  config.include AuthenticationHelper, type: :feature
end
