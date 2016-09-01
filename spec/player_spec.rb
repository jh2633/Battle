require 'spec_helper'
require 'player'

describe Player do
  subject(:jon) {Player.new("jon")}
  subject(:mertz) {Player.new("mertz")}

  describe "#name" do
    it "returns players name" do
      expect(jon.name).to eq("jon")
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(jon.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end
