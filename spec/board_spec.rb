require "board"

describe "Board" do
  before { @board = Board.new }

  describe "For choosen place on board:" do
    it "Allows to assign value" do
      @board.board[:a1] = ' X '
      expect(@board.board[:a1]).to eql(' X ')
    end

    it "Reads value" do
      expect(@board.board[:ha]).to eql(" A ")
    end
  end

  describe "Creates a board" do
    it "Which is an instance of Hash" do
      expect(@board.board).to be_an_instance_of(Hash)
    end
  end
end