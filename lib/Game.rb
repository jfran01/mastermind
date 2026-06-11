require_relative "User"
require_relative "Computer"

class Game 
  attr_reader :guesses, :current_guesses

  def initialize
    @user = User.new()
    @computer = Computer.new(@user)
    @guesses = []
    @feedbacks = []
    @user.get_role
  end

  def get_code 
    if @user.role == "setter"
      @code = @user.get_input
    else @code = @computer.generate_code
    end
  end

  def get_guess
    if @user.role == "breaker"
      @current_guess = @user.get_input
    else @current_guess = [1, 2, 3, 4]
    end
  end

  def check_guess
    @current_guess.each_with_index do |guess, i|
      
    end
  end
end

game = Game.new()
p game.get_guess