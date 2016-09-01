require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attacks Player 2 with confirmation' do
      sign_in_and_play
      click_link('Attack')
      expect(page).to have_content('Jon attacked Mertz')
  end
end
