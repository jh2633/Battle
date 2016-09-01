require 'spec_helper'

feature "Hit Points" do

  scenario "Player 1 can see Player 2's HP's" do
    sign_in_and_play
    expect(page).to have_content ("Mertz: 50HP")
  end
end
