require 'player'

describe Player do
  
  let(:player){Player.new}

  it 'should pick any option and convert it in a symbol' do
    expect(player.pick('rock')).to eq :rock
    expect(player.pick('paper')).to eq :paper
    expect(player.pick('scissors')).to eq :scissors
  end

end