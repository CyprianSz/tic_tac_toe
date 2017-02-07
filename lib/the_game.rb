require_relative "board"
require_relative "player"

class NewGame
	def initialize 
		@board = Board.new
		take_names
		lets_play
	end

	def take_names
		puts "\nWelcome to Tic Tac Toe."
		sleep 2
		puts "\nGive first player name: "
		@first_name = gets.chomp
		@player1 = Player.new(@first_name, '  O ')
		puts "\nHello #{@first_name} ! Your sign is: O "
		sleep 2

		puts "\nGive second player name: "
		@second_name = gets.chomp
		@player2 = Player.new(@second_name, '  X ')
		puts "\nHello #{@second_name} ! Your sign is: X "
		sleep 2
	end

	def win_or_draw 
		if ( @board.board[:a1] == @board.board[:a2] && @board.board[:a2] == @board.board[:a3] && @board.board[:a3] != "    " ) ||
			 ( @board.board[:b1] == @board.board[:b2] && @board.board[:b2] == @board.board[:b3] && @board.board[:b3] != "    " ) ||
			 ( @board.board[:c1] == @board.board[:c2] && @board.board[:c2] == @board.board[:c3] && @board.board[:c3] != "    " ) ||
			 ( @board.board[:a1] == @board.board[:b1] && @board.board[:b1] == @board.board[:c1] && @board.board[:c1] != "    " ) ||
			 ( @board.board[:a2] == @board.board[:b2] && @board.board[:b2] == @board.board[:c2] && @board.board[:c2] != "    " ) ||
			 ( @board.board[:a3] == @board.board[:b3] && @board.board[:b3] == @board.board[:c3] && @board.board[:c3] != "    " ) ||
			 ( @board.board[:a1] == @board.board[:b2] && @board.board[:b2] == @board.board[:c3] && @board.board[:c3] != "    " ) ||
			 ( @board.board[:c1] == @board.board[:b2] && @board.board[:b2] == @board.board[:a3] && @board.board[:a3] != "    " )
			 puts @board.view_board
			 puts "\nYou win the game."
			 puts "Thanks for playing.\n"
			 true
		elsif @board.board.each_value.none? { |x| x == "    " }
			puts @board.view_board
			puts "\nHere we have a draw."
			puts "Thanks for playing.\n"
			true
		else
			false
		end
	end

	def lets_play

		until win_or_draw
			@board.view_board
			puts "\n#{@player1.name} - it's your turn. Where to put your sign ?"
			coordinates = gets.chomp.downcase
			con1 = coordinates.match /[abc][123]/
			con2 = @board.board[coordinates.to_sym] == "    "
			if con1 && con2 
				@board.board[coordinates.to_sym] = @player1.symbol
			else
				puts "\nYou gave wrong coordinates ! You lose your turn."
			end

			break if win_or_draw

			@board.view_board
			puts "\n#{@player2.name} - it's your turn. Where to put your sign ?"
			coordinates = gets.chomp.downcase
			con1 = coordinates.match /[abc][123]/
			con2 = @board.board[coordinates.to_sym] == "    "
			if con1 && con2 
				@board.board[coordinates.to_sym] = @player2.symbol
			else
				puts "\nYou gave wrong coordinates ! You lose your turn."
			end
		end
	end
end

NewGame.new