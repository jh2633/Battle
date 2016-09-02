require 'spec_helper'

feature "Hit Points" do

  scenario "Player 1 can see Player 2's HP's" do
    sign_in_and_play
    expect(page).to have_content ("Murtz: 50HP")
  end

  scenario "Current player can see their HP after switch" do
    sign_in_and_play
    expect(page).to have_content ("Jon: 50HP")
  end
end
