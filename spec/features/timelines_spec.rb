require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "user creates a new timeline" do
    visit root_path

    expect {
      fill_in "timeline[event]", with: "First Outing"
      click_button "Create Timeline"

      expect(page).to have_content "Timeline successfully created"
      expect(page).to have_content "First Outing"
    }.to change(Timeline.all, :count).by(1)
  end

end
