class Board
  attr_accessor :board
  def initialize
    @board = {
            :h0 => "   ", :h1 => "  1 ", :h2 => "  2 ", :h3 => "  3 ",
            :ha => " A ",  :a1 => "    ", :a2 => "    ", :a3 => "    ", 
            :hb => " B ",  :b1 => "    ", :b2 => "    ", :b3 => "    ",
            :hc => " C ",  :c1 => "    ", :c2 => "    ", :c3 => "    "
    }
  end

  def view_board
    puts "\nCurrent Board: "
    puts @board[:h0] + "  " + @board[:h1] + "  " + @board[:h2] + "  " + @board[:h3]
    puts @board[:ha] + "  " + @board[:a1] + "  " + @board[:a2] + "  " + @board[:a3]
    puts @board[:hb] + "  " + @board[:b1] + "  " + @board[:b2] + "  " + @board[:b3]
    puts @board[:hc] + "  " + @board[:c1] + "  " + @board[:c2] + "  " + @board[:c3]
  end
end