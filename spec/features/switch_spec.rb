require 'spec_helper'

feature 'switch' do

  scenario 'player 1 is now the opponent after attacking' do
    sign_in_and_play
    click_link "Attack"
    click_link "Switch"
    expect(page).to have_content("Jon: 50HP")
  end

  scenario 'player 1 has first turn ' do
    sign_in_and_play
    expect(page).to have_content("Jon's turn")
  end

  scenario 'display player 2 turn after switch' do
    sign_in_and_play
    click_link "Attack"
    click_link "Switch"
    expect(page).to have_content("Murtz's turn")
  end
end
