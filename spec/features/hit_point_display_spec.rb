require "capybara/rspec"
require_relative "../../app"

  #As Player 1,
  #So I can see how close I am to winning
  #I want to see Player 2's Hit Points
  feature "viewing hit points" do
    scenario "player 1 can see player 2's hit points" do
      #names = %w(Andrea Randy Giorgia Jill)
      #current_name = names.sample
      visit("/")
      fill_in('player1', with: 'Moose')
      fill_in('player2', with: 'Duck')
      click_button('Play')
      #expect(page).to have_content("#{current_name}'s HitPoints: 100")
      expect(page).to have_content("Duck's HitPoints: 100")
    end
  end
