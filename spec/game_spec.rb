require 'game'

describe Game do

  let(:game){Game.new}

  it 'should have options by default' do
    expect(game.options).not_to be_empty
  end

  context 'player winning' do

    before{allow(game).to receive(:random_choice)}
   
    it 'should return won when the player select paper and the CPU select rock' do
      game.computer_choice = :rock
      expect(game.result(:paper)).to eq 'won'
    end

    it 'should return won when the player selects rock and the CPU selects scissors' do
      game.computer_choice = :scissors
      expect(game.result(:rock)).to eq 'won'
    end

    it 'should return won when the player selects scissors and the CPU selects paper' do
      game.computer_choice = :paper
      expect(game.result(:scissors)).to eq 'won'
    end
  end

  context 'player losing' do

    before{allow(game).to receive(:random_choice)}

    it 'should return lose when the player selects paper and the CPU selects scissors' do
      game.computer_choice = :scissors
      expect(game.result(:paper)).to eq 'lose'
    end

    it 'should return lose when the player selects scissors and the CPU selects rock' do
      game.computer_choice = :rock
      expect(game.result(:scissors)).to eq 'lose'
    end

    it 'should return lose when the player selects rock and the CPU selects paper' do
      game.computer_choice = :paper
      expect(game.result(:rock)).to eq 'lose'
    end
  end

  context 'player and CPU tied' do

    before{allow(game).to receive(:random_choice)}

    it 'should return tied when the player selects rock and the CPU selects rock' do
      game.computer_choice = :rock
      expect(game.result(:rock)).to eq 'tied'
    end

    it 'should return tied when the player selects paper and the CPU selects paper' do
      game.computer_choice = :paper
      expect(game.result(:paper)).to eq 'tied'
    end

    it 'should return tied when the player selects scissors and the CPU selects scissors' do
      game.computer_choice = :scissors
      expect(game.result(:scissors)).to eq 'tied'
    end
  end
end