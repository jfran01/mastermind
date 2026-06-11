require_relative "User"
require_relative "Computer"
require "pry-byebug"

class Game 
  attr_reader :current_guess, :current_feedback, :code

  def initialize
    @user = User.new()
    @computer = Computer.new(@user)
    @user.get_role
    self.get_code
  end

  def get_code 
    if @user.role == "setter"
      @code = @user.get_input
    else @code = @computer.generate_code(4)
    end
  end

  def get_guess
    if @user.role == "breaker"
      @current_guess = @user.get_input
    else @current_guess = [1, 2, 3, 4]
    end
  end

  def check_guess
    p self.code
    self.get_guess
    @current_feedback = {black: 0, white: 0}
    @current_guess.each_with_index do |digit, i|
      if digit == @code[i]
        self.current_feedback[:black] += 1
      end
    end
    binding.pry
  end
end

game = Game.new()
p game.check_guess