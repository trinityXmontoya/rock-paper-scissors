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

end
