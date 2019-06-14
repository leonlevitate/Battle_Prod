require 'player'

describe 'Player' do
  subject(:leon) { Player.new('Leon') }
  subject(:chris) { Player.new('Chris') }

  let(:hit_points){Player::DEFAULT_HIT_POINTS}

  describe '#name' do
    it 'returns the name' do
      expect(leon.name).to eq 'Leon'
    end
  end

  describe '#hit_points' do
    it 'shows the current points' do
      expect(leon.hit_points).to eq hit_points
    end
  end

  describe '#attack' do
    it 'attacks the player' do
      expect(chris).to receive(:receive_damage)
      leon.attack(chris)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players points' do
      expect { leon.receive_damage }.to change { leon.hit_points }.by(-10)
    end
  end
end
