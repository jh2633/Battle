require 'spec_helper'

feature 'switch' do

  scenario 'player 1 is now the opponent after attacking' do
    sign_in_and_play
    click_link "Attack"
    click_link "Switch"
    expect(page).to have_content("Jon: 50HP")
  end

end
