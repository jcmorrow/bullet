require "rails_helper"

describe Article do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:user) }
end
