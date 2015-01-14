require 'game'

describe Game do

  let(:game){Game.new}

  it 'should have options by default' do
    expect(game.options).not_to be_empty
  end

  context 'player winning' do
   
    it 'should return won when the player select paper and the opponent select rock' do
      expect(game.result(:paper, :rock)).to eq 'won'
    end

    it 'should return won when the player selects rock and the opponent selects scissors' do
      expect(game.result(:rock, :scissors)).to eq 'won'
    end

    it 'should return won when the player selects scissors and the opponent selects paper' do
      expect(game.result(:scissors, :paper)).to eq 'won'
    end
  end

  context 'player losing' do

    it 'should return lose when the player selects paper and the opponent selects scissors' do
      expect(game.result(:paper, :scissors)).to eq 'lose'
    end

    it 'should return lose when the player selects scissors and the opponent selects rock' do
      expect(game.result(:scissors, :rock)).to eq 'lose'
    end

    it 'should return lose when the player selects rock and the opponent selects paper' do
      expect(game.result(:rock, :paper)).to eq 'lose'
    end
  end

  context 'player and opponent tied' do

    it 'should return tied when the player selects rock and the opponent selects rock' do
      expect(game.result(:rock, :rock)).to eq 'tied'
    end

    it 'should return tied when the player selects paper and the opponent selects paper' do
      expect(game.result(:paper, :paper)).to eq 'tied'
    end

    it 'should return tied when the player selects scissors and the opponent selects scissors' do
      expect(game.result(:scissors, :scissors)).to eq 'tied'
    end
  end
end