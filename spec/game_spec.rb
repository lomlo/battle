require 'game'

describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}
  subject(:game) { described_class.new(player1, player2) }

  describe 'respond_to' do
    it { is_expected.to respond_to(:attack)}
  end
  describe '#attack' do
    it 'calls receive damage on player' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end
end
