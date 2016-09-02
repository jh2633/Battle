require 'game'

describe Game do

  subject(:game) {described_class.new(joseph, murtz)}
  let(:joseph) {double :joseph}
  let(:murtz) {double :murtz}

  it "#attack" do
    allow(murtz).to receive(:dead?).and_return(false)
    expect(murtz).to receive(:reduce_hp)
    game.attack(murtz)
  end

  it "switches players" do
    game.switch
    expect(game.current_player).to eq(murtz)
  end

  it 'returns a lose message if opponent reaches 0hp' do
    allow(murtz).to receive(:dead?).and_return(true)
    allow(murtz).to receive(:name).and_return("Murtz")
    expect(game.opponent_dead(murtz)).to eq("Murtz Lost!")
  end
end
