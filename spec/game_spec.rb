require 'game'

describe Game do

  subject(:game) {described_class.new(joseph, murtz)}
  let(:joseph) {double :joseph}
  let(:murtz) {double :murtz}

  it "#attack" do
    expect(murtz).to receive(:reduce_hp)
    game.attack(murtz)
  end

  it "switches players" do
    game.switch
    expect(game.current_player).to eq(murtz)
  end
end
