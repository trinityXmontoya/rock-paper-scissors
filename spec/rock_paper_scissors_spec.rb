require 'spec_helper'
require_relative '../lib/rock_paper_scissors'

describe 'Rock Paper Scissors' do

  let(:new_game) {RockPaperScissors.new}

  context 'initialization' do
    it 'should be initialized with the correct array of choices defined ' do
      expect(new_game.choices).to eq([:rock,:paper,:scissors])
    end

    it 'should be initialized with the correct winning combos hash defined' do
      expect(new_game.win_combos).to eq({:rock=>:scissors, :scissors=>:paper, :paper=>:rock})
    end

  end

  # describe '.begin_game' do
  #
  #   context 'validate that the user input is one of the given choices' do
  #     it 'should prompt the user for a new input if the original one is invalid' do
  #     STDIN.stub(:gets) {"r"}
  #     expect(new_game.begin_game).to eq("Please choose a valid selection : rock, paper, or scissors")
  #     end
  #   end
  #
  #
  # end

  describe '.generate_comp_choice' do
    it 'should return a random symbol from the choices array' do
      expect(new_game.choices).to include(new_game.generate_comp_choice)
    end
  end

end
