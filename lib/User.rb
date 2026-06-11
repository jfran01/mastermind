class User

  attr_reader :code, :role

  def get_role
    puts "What side of the law are you going to be on today? \nHelp the jeweller to set an unbreakable code and protect her wares (enter 'setter'), \nOr launch a heist and attempt to break into the safe (enter 'breaker')"
    @role = gets.chomp.downcase
  end

  def get_input
    if @role == "setter"
      puts "Enter your secret code:"
    elsif @role == "breaker"
      puts "Enter your guess:"
    end
    @code = gets.chomp
    until @code.chars.all? {|num| num.between?("1", "6")}
      puts "Hmm only NUMBERS between 1 TO 6 please. Try again:" 
       @code = gets.chomp
    end
    self.check_code_length
    @code = @code.split("").map(&:to_i)
  end

  def check_code_length
    until @code.length == 4
        if @code.length < 4
          too_short = 4 - @code.length
          puts "Oops, your code is #{too_short} digits too short. I'm going to need #{too_short} more digits please..."
          @code += gets.chomp
        elsif code.length > 4
          puts "Oops, your code is #{@code.length - 4} digits too long - not enough room for that. I'm going to have to get rid of #{@code[4..-1]}"
          @code = @code[0..3]
        end
    end
  end
end