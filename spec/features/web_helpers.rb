def sign_in_and_play
	visit("/")
      fill_in('player1', with: 'Moose')
      fill_in('player2', with: 'Duck')
      click_button('Play')
end
