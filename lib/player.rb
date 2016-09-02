class Player

  attr_reader :name, :hp

  DEFAULT_HIT_POINTS = 50

  def initialize(name)
    @name = name
    @hp = DEFAULT_HIT_POINTS
  end

  def attack
    @hp -= 10
  end
end
