class RockPaperScissors

  attr_accessor :choices, :win_combos

  def initialize
    @choices = [:rock,:paper,:scissors]
    @win_combos = {
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
        user_input = gets.chomp.downcase.to_sym
      end

    # check_winner(user_input)

  end

  def generate_comp_choice
    choices.sample
  end

  def check_winner(user_input)
  end

end
