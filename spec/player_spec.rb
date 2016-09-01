require 'spec_helper'
require 'player'

describe Player do

  subject(:Jon) {Player.new("Jon")}

  it "returns players name" do
    expect(subject.name).to eq("Jon")
  end
end
