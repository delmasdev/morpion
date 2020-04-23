
class Show


def show_board
    puts "-" * 55
    puts "|                 |                 |                 |"
    puts "|        #{@A1.s_symbol}        |        #{@A2.s_symbol}        |        #{@A3.s_symbol}        |"
    puts "|                 |                 |                 |"
    puts "-" * 55
    puts "|                 |                 |                 |"
    puts "|        #{@B1.s_symbol}        |        #{@B2.s_symbol}        |        #{@B3.s_symbol}        |"
    puts "|                 |                 |                 |"
    puts "-" * 55
    puts "|                 |                 |                 |"
    puts "|        #{@C1.s_symbol}        |        #{@C2.s_symbol}        |        #{@C3.s_symbol}        |"
    puts "|                 |                 |                 |"
    puts "-" * 55
  end


end
