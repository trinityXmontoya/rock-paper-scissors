require 'spec_helper'
require_relative '../lib/rock_paper_scissors'

describe 'Rock Paper Scissors' do

  let(:new_game) {RockPaperScissors.new}

  context 'initialization' do
    it 'should be initialized with the correct choices defined ' do
      expect(new_game.choices).to eq([:rock,:paper,:scissors])
    end

    it 'should be initialized with the correct winning combos defined' do
      expect(new_game.win_combos).to eq({:rock=>:scissors, :scissors=>:paper, :paper=>:rock})
    end

  end

end
