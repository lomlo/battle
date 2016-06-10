# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Player1 can attack Player2" do
	scenario "when player1 attacks player2, confirmation is given " do
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_content ('Moose has attacked Duck')
	end

	scenario "when player1 attacks, player2's HP is reduced" do
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_content ("Duck's HitPoints: 90")
	end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
