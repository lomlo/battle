require "capybara/rspec"
require_relative "../../app"

  #As two Players,
  #So we can play a personalised game of Battle,
  #We want to Start a fight by entering our names and seeing them
  feature "Players enter names" do
    scenario "player names are displayed onscreen" do
      sign_in_and_play
      expect(page).to have_content("Moose -vs- Duck")
    end
  end
