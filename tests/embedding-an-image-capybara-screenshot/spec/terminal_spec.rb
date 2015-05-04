require 'spec_helper'

RSpec.describe "terminal homepage", type: :feature do
  before do
    Capybara.app_host = 'http://buildkite.github.io/'

    visit "/terminal"
  end

  it "includes the usage of terminal" do
    expect(page).to have_content("cat input.raw | terminal-to-html > out.html")
  end

  it "says that there is a spoon" do
    expect(page).to have_content("there is a spoon")
  end
end
