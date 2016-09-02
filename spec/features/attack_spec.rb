require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attacks Player 2 with confirmation' do
      sign_in_and_play
      click_link('Attack')
      expect(page).to have_content('Jon attacked Murtz')
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_link("Attack")
    expect(page).not_to have_content ("Murtz: 50HP")
    expect(page).to have_content ("Murtz: 40HP")
  end
end
