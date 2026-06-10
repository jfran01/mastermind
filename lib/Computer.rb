class Computer
  def initialize (player)
    if player.role == "setter"
      @role = "breaker"
    else @role = "setter"
    end
    @code = []
  end

  def generate_code (num)
    arr = [1, 2, 3, 4, 5, 6]
    @code = arr.shuffle.first(num)
  end
end