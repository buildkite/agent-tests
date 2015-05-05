require 'spec_helper'

RSpec.describe "Terminal inline images docs", type: :feature do
  before do
    Capybara.app_host = 'http://buildkite.github.io/'

    visit "/terminal/inline-images/"
  end

  it "includes an example print_image_ref bash function" do
    expect(page).to have_content("print_image_ref")
  end

  it "says that there is a spoon" do
    expect(page).to have_content("there is a spoon")
  end
end
