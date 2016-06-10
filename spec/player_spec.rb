require 'player'


# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

describe Player do
  subject(:player1) { described_class.new('Player') }
  describe 'responds to' do
    it { is_expected.to respond_to(:hp)}
  end
  describe '#return_name' do
    it "should return name 'Player'" do
      expect(player1.name).to eq "Player"
    end
    it "should return name 'Dave'" do
      player1 = Player.new('Dave')
      expect(player1.name).to eq "Dave"
    end
  end
  describe '#receive_damage' do
    it 'changes the players hitpoints' do
      expect{player1.receive_damage}.to change {player1.hp}.by(-10)
    end
  end
end
