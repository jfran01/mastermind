require_relative "User"
require_relative "Computer"

class Game 
  def initialize
    @user = User.new()
    @computer = Computer.new()
    @guesses = []
    @feedbacks = []
  end
end