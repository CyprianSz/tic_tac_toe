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
end