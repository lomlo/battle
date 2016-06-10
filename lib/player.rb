# to store and change the state of a user

class Player
    attr_reader :name
    attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def receive_damage
    @hp -= 10
  end
end
