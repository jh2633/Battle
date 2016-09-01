require 'spec_helper'

def sign_in_and_play
  visit("/")
  fill_in("player1", with: "Jon")
  fill_in("player2", with: "Mertz")
  click_button("submit")
end
