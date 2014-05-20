
# ROCK, PAPER, SCISSORS GAME
class RockPaperScissors

  attr_accessor :choices, :winning_combos

  def initialize
    @choices = [:rock,:paper,:scissors]
    @winning_combos= {
        :rock => :scissors,
        :scissors => :paper,
        :paper => :rock
      }
  end

  def begin_game
    puts
    puts " ---------------------------------- "
    puts "* WELCOME TO ROCK, PAPER, SCISSORS *"
    puts " ---------------------------------- "
    puts "Please choose one:"
    puts "
    Rock
            _______
        ---'   ____)
              (_____)
              (_____)
              (____)
        ---.__(___)


    Paper
            _______
        ---'   ____)____
                  ______)
                  _______)
                _______)
        ---.__________)

    Scissors
            _______
        ---'   ____)____
                  ______)
               __________)
              (____)
        ---.__(___)

      "
    user_input = gets.chomp.downcase.to_sym

      while !choices.include? user_input
        puts "Please choose a valid selection : rock, paper, or scissors"
        # puts "\e[A\e[K"
        user_input = gets.chomp.downcase.to_sym
      end

    check_winner(user_input)

  end

  def generate_comp_choice
    choices.sample
  end

  def check_winner(user_input)
    comp_choice = generate_comp_choice
    puts
    puts "You chose #{user_input}."
    puts "The computer chose..."
    sleep 1
    puts "...#{comp_choice}."
    puts

      if user_input == comp_choice
        puts "It's a tie."
      elsif winning_combos[user_input] == comp_choice
        puts "You win!"
      else
        puts "Computer wins."
      end

      prompt_for_new_game
  end

  def prompt_for_new_game
    puts
    puts "Play again? 'yes' to continue, anything else to exit."
    user_response = gets.chomp.downcase

    if user_response == "yes"
      begin_game
    else
      exit
    end
  end

end

new_game = RockPaperScissors.new
new_game.begin_game
