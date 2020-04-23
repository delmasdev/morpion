
class Game
  attr_accessor :players, :board

  def initialize

    @players = []
    @board = Board.new
  end


  def ask_name

    puts "--> Bonjour Joueur 1, quel est ton nom ?"
    print "--> "
    name1 = gets.chomp.to_s
    puts "--> Tu peux choisir entre les 'X' ou les 'O' !!"
    print "--> "
    symbol1 = gets.chomp.to_s

      while symbol1 != "X" && symbol1 != "O"
        puts "--> Tu ne peux que choisir entre les 'X' ou les 'O' !!!!"
        print "--> "
        symbol1 = gets.chomp.to_s
        if symbol1 == "X" && symbol1 == "O"
          break
        end
      end

    puts " "
    puts "--> Woahhh #{name1}, tu as choisis le symbole '#{symbol1}', c'est le meilleur !!"
    puts "-" * 50
    puts " "
    @players << Player.new(name1, symbol1)

    puts "--> Bonjour Joueur 2, quel est ton nom ?"
    print "--> "
    name2 = gets.chomp.to_s

      if symbol1 == "X"
        symbol2 = "O"
      else symbol2 = "X"
      end
    puts " "
    puts "AHAHAH #{name2}, tu as forcément le symbole '#{symbol2}', c'est la loose !!"
    puts "-" * 50
    puts " "
    puts " "

    @players << Player.new(name2, symbol2)
  end


  def select_player

    while @board.row_win == false
      @players.each { |item| play_turn(item) }
    end
  end


  def play_turn (player)

    puts " "
    puts " "
    puts "--> Hey ! #{player.name} c'est à toi de jouer. --> a1, a2, a3, b1, b2, b3, c1, c2, c3"
    puts "--> Fais le bon choix !"
    print "--> "
    case_choice = gets.chomp
      while case_choice != "a1" && case_choice != "a2" && case_choice != "a3" && case_choice != "b1" && case_choice != "b2" && case_choice != "b3" && case_choice != "c1" && case_choice != "c2" && case_choice != "c3"
        puts "--> a1, a2, a3, b1, b2, b3, c1, c2, c3"
        print "--> "
        case_choice = gets.chomp
          if case_choice == "a1" && case_choice == "a2" && case_choice == "a3" && case_choice == "b1" && case_choice == "b2" && case_choice == "b3" && case_choice == "c1" && case_choice == "c2" && case_choice == "c3"
            break
          end
      end

    @board.write_on_case(case_choice, player.symbol)
    @board.show_board
    @board.victory?

      if @board.row_win == true
        puts "-" * 50
        puts "--> OUAIIII !!! #{player.name}!! Tu as gagné !! T'es trop fort !!!"
        puts "-" * 50
        new_round
      elsif @board.game_draw == true
        puts "-" * 50
        puts "--> AHHH !!! Match nul !!"
        puts "-" * 50
        new_round
      end
  end


  def new_round

    puts "--> Tape 'R' si tu veux relancer la partie ! Sinon appuis où tu veux ;)"
    print "--> "
    new_r = gets.chomp.to_s

    if new_r == "R"
     Game.new.perform
    end
  end


  def perform

    ask_name
    @board.show_board
    select_player
  end
end
