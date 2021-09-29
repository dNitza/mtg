require 'spec_helper'

RSpec.describe Magic::Cards::RampantGrowth do
  let(:game) { Magic::Game.new }
  let(:p1_forest) { Magic::Cards::Forest.new(game: game) }
  let(:p1) { game.add_player(library: [p1_forest]) }
  let(:card) { described_class.new(game: game, controller: p1) }

  it "search for land effect" do
    card.cast!
    game.stack.resolve!
    expect(p1_forest.zone).to be_battlefield
    expect(p1_forest).to be_tapped
    expect(game.battlefield.cards).to include(p1_forest)
  end
end
