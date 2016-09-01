require 'spec_helper'

feature 'Entering name of players' do

  scenario 'player 1 & 2 enter names' do
    visit("/")
    fill_in("player1", with: "Jon")
    fill_in("player2", with: "Mertz")
    click_button("submit")
    expect(page).to have_content("Jon vs. Mertz")
  end
end
