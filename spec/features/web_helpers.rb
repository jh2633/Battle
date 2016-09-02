require 'spec_helper'

def sign_in_and_play
  visit("/")
  fill_in("player1", with: "Jon")
  fill_in("player2", with: "Murtz")
  click_button("submit")
end

def almost_dead_player
  visit("/")
  fill_in("player1", with: "Jon")
  fill_in("player2", with: "Murtz")
  click_button("submit")
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
  click_link "Switch"
  click_link "Attack"
end
