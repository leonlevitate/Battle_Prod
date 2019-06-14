require 'player'

describe 'Player' do
  subject(:leon) { Player.new('Leon') }
  subject(:chris) { Player.new('Chris') }

  let(:default_hp){Player::DEFAULT_HP}

  describe '#name' do
    it 'returns the name' do
      expect(leon.name).to eq 'Leon'
    end
  end

  describe '#default_hp' do
    it 'shows the current points' do
      expect(leon.default_hp).to eq default_hp
    end
  end

  describe '#attack' do
    it 'attacks the player' do
      expect(chris).to receive(:be_hit)
      leon.attack(chris)
    end
  end
end
