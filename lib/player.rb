class Player

  DEFAULT_HP = 100
  attr_reader :name, :default_hp

  def initialize(name, default_hp = DEFAULT_HP)
    @name = name
    @default_hp = default_hp
  end

  def attack(player)
    player.be_hit
  end

  def be_hit
    @default_hp -= 10
  end
end
