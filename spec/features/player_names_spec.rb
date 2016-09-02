require 'spec_helper'

feature 'Entering name of players' do

  scenario 'player 1 & 2 enter names' do
    sign_in_and_play
    expect(page).to have_content("Jon vs. Murtz")
  end
end
