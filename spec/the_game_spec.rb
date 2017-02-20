require "board"
require "the_game"

describe "NewGame" do 

  let(:newgame) { NewGame.new }

  describe "#win_or_draw" do
    it "returns true when there is a winner" do
      allow(win_or_draw).receive(@board.board) { "  X " }
      expect(win_or_draw).to be_truthy
    end

    it "returns true when there is a draw" do
      allow(win_or_draw).receive(@board.board.each_value.none?) { true }
      expect(win_or_draw).to be_truthy
    end

    it "returns false when neither win nor draw" do

    end
  end

end