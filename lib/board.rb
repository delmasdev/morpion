
class Board
  attr_accessor :boardcase_array_hash, :play_turn, :row_win, :game_draw

  def initialize

    @A1 = BoardCase.new(" ","a1")
    @A2 = BoardCase.new(" ","a2")
    @A3 = BoardCase.new(" ","a3")
    @B1 = BoardCase.new(" ","b1")
    @B2 = BoardCase.new(" ","b2")
    @B3 = BoardCase.new(" ","b3")
    @C1 = BoardCase.new(" ","c1")
    @C2 = BoardCase.new(" ","c2")
    @C3 = BoardCase.new(" ","c3")

    @row_win = false
    @game_draw = false

    @boardcase_array_hash = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end


  def write_on_case (case_choice, player_symbol)
    #si l'entrée correspond à une case_id, alors le symbole du joueur est rentré dans le tableau.
    @boardcase_array_hash.map { |item| item.case_id == case_choice ? item.s_symbol = player_symbol  : item }
  end


  def victory?

    if @A1.s_symbol == "O" && @A2.s_symbol == "O" && @A3.s_symbol == "O" || @A1.s_symbol == "X" && @A2.s_symbol == "X" && @A3.s_symbol == "X"
      @row_win = true
    end

    if @B1.s_symbol == "O" && @B2.s_symbol == "O" && @B3.s_symbol == "O" || @B1.s_symbol == "X" && @B2.s_symbol == "X" && @B3.s_symbol == "X"
      @row_win = true
    end

    if @C1.s_symbol == "O" && @C2.s_symbol == "O" && @C3.s_symbol == "O" || @C1.s_symbol == "X" && @C2.s_symbol == "X" && @C3.s_symbol == "X"
      @row_win = true
    end

    if @A1.s_symbol == "O" && @B1.s_symbol == "O" && @C1.s_symbol == "O" || @A1.s_symbol == "X" && @B1.s_symbol == "X" && @C1.s_symbol == "X"
      @row_win = true
    end

    if @A2.s_symbol == "O" && @B2.s_symbol == "O" && @C2.s_symbol == "O" || @A2.s_symbol == "X" && @B2.s_symbol == "X" && @C2.s_symbol == "X"
      @row_win = true
    end

    if @A3.s_symbol == "O" && @B3.s_symbol == "O" && @C3.s_symbol == "O" || @A3.s_symbol == "X" && @B3.s_symbol == "X" && @C3.s_symbol == "X"
      @row_win = true
    end

    if @A1.s_symbol == "O" && @B2.s_symbol == "O" && @C3.s_symbol == "O" || @A1.s_symbol == "X" && @B2.s_symbol == "X" && @C3.s_symbol == "X"
      @row_win = true
    end

    if @A3.s_symbol == "O" && @B2.s_symbol == "O" && @C1.s_symbol == "O" || @A3.s_symbol == "X" && @B2.s_symbol == "X" && @C1.s_symbol == "X"
      @row_win = true
    end
  end


  def draw

    @boardcase_array_hash.each { |item| item.s_symbol == /[:SPACE:]/ ? @game_draw = true : @game_draw = false }
  end


  def show_board
    puts " "
    puts " "
    puts "                VOICI LE MAGNIFIQUE MORPION !!              "
    puts " "
    print "     "
    puts "            1                 2                  3          "
    print "     "
    puts "-" * 55
    puts "     |                 |                 |                 |"
    puts "  a  |        #{@A1.s_symbol}        |        #{@A2.s_symbol}        |        #{@A3.s_symbol}        |"
    puts "     |                 |                 |                 |"
    print "     "
    puts "-" * 55
    puts "     |                 |                 |                 |"
    puts "  b  |        #{@B1.s_symbol}        |        #{@B2.s_symbol}        |        #{@B3.s_symbol}        |"
    puts "     |                 |                 |                 |"
    print "     "
    puts "-" * 55
    puts "     |                 |                 |                 |"
    puts "  c  |        #{@C1.s_symbol}        |        #{@C2.s_symbol}        |        #{@C3.s_symbol}        |"
    puts "     |                 |                 |                 |"
    print "     "
    puts "-" * 55
  end
end
