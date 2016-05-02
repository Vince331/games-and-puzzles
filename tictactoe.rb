r1 = [nil,nil,nil]
r2 = [nil,nil,nil]
r3 = [nil,nil,nil]

def board(r1,r2,r3)
p r1
p r2
p r3
end


def win_or_cats(r1,r2,r3 , player)

  if r1[0] == "x" and r2[0] == "x" and r3[0] == "x"
    return "x wins!, good job #{player[0]}"
  end

  if r1[0] == "o" and r2[0] == "o" and r3[0] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r1[1] == "x" and r2[1] == "x" and r3[1] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r1[1] == "o" and r2[1] == "o" and r3[1] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r1[2] == "x" and r2[2] == "x" and r3[2] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r1[2] == "o" and r2[2] == "o" and r3[2] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r1[0] == "x" and r1[1] == "x" and r1[2] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r1[0] == "o" and r1[1] == "o" and r1[2] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r2[0] == "x" and r2[1] == "x" and r2[2] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r2[0] == "o" and r2[1] == "o" and r2[2] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r3[0] == "x" and r3[1] == "x" and r3[2] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r3[0] == "o" and r3[1] == "o" and r3[2] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r1[0] == "x" and r2[1] == "x" and r3[2] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r1[0] == "o" and r2[1] == "o" and r3[2] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if r1[2] == "x" and r2[1] == "x" and r3[0] == "x"
    return "x wins!, good job #{player[0]}"
  end
  if r1[2] == "o" and r2[1] == "o" and r3[0] == "o"
    return "o wins!, good job #{player[0]}"
  end
  if (r1.include?(nil) or r2.include?(nil) or r3.include?(nil)) == false
    return "cats game"
  end
  return "nothing"
end

def assignment
player1 = []
player2 = []
puts "please enter the player's name for the x's"
player1[0] = gets.chomp
player1 << "x"
puts "please enter the player's name for the o's"
player2[0] = gets.chomp
player2 << "o"
#puts "player1 would you like to be x or o?"
# letter = gets.chomp.downcase
#   if letter == "x" || letter == "o"
#     if letter == "x"
#       player1[1] = "x"
#       player2[1] = "o"
#     else
#       player1[1] = "o"
#       player2[1] = "x"
#     end
#   else
#     puts "did not input x or o! Start over!!!!"
#     assignment
#   end
  return [player1, player2]
end

def comp_move(r1,r2,r3)
  poss = ["tl","tm","tr","ml","mm","mr","bl","bm","br"]
  move = poss.shuffle.first
  if check_if_used(move,r1,r2,r3) == true
    sleep 1
    comp_thinking
    return move
  else
    comp_move(r1,r2,r3)
  end
end

def comp_thinking
print "computer thinking"
      4.times do
        sleep 1
        print "."
  end
end

def check_if_used(movement,r1,r2,r3)
  if (movement == "tl" && r1[0] != nil)
    return false
  end
  if (movement == "tm" && r1[1] != nil)
    return false
  end
  if (movement == "tr" && r1[2] != nil)
    return false
  end
  if (movement == "ml" && r2[0] != nil)
    return false
  end
  if (movement == "mm" && r2[1] != nil)
    return false
  end
  if (movement == "mr" && r2[2] != nil)
    return false
  end
  if (movement == "bl" && r3[0] != nil)
    return false
  end
  if (movement == "bm" && r3[1] != nil)
    return false
  end
  if (movement == "br" && r3[2] != nil)
    return false
  end
  return true
end




def which_movement(player,r1,r2,r3)
puts "possible movements"
p ["tl","tm","tr"]
p ["ml","mm","mr"]
p ["bl","bm","br"]
puts "++++++++++++++++++++"
puts "spots filled in board"
board(r1,r2,r3)
puts "-----------------------"
puts "#{player} which spot do you want to move? type the corresponding letters and press enter"
movement = gets.downcase.chomp
poss = ["tl","tm","tr","ml","mm","mr","bl","bm","br"]
    if poss.include?(movement)
      if check_if_used(movement,r1,r2,r3) == true
        return movement
      else
        puts "spot already in use"
        which_movement(player,r1,r2,r3)
      end
    else
    puts "puts wrong command entered"
    which_movement(player,r1,r2,r3)
    end
end

def place_value(player_x_or_o, movement,r1,r2,r3)
  if movement == "tl"
    r1[0] = player_x_or_o
  end
  if movement == "tm"
    r1[1] = player_x_or_o
  end
  if movement == "tr"
    r1[2] = player_x_or_o
  end
  if movement == "ml"
    r2[0] = player_x_or_o
  end
  if movement == "mm"
    r2[1] = player_x_or_o
  end
  if movement == "mr"
    r2[2] = player_x_or_o
  end
  if movement == "bl"
    r3[0] = player_x_or_o
  end
  if movement == "bm"
    r3[1] = player_x_or_o
  end
  if movement == "br"
    r3[2] = player_x_or_o
  end
  return [r1, r2, r3]
end

def which_game
puts "do you want to play another human or a computer?"
answer = gets.downcase.chomp
  if answer == "human" || answer == "computer"
     return answer
  else
     which_game
  end
end

answer = which_game
if answer == "fuck you"
  puts "fuck this game"
elsif answer == "human"
  player1, player2 = assignment
  player = player1
  while win_or_cats(r1,r2,r3,player) == "nothing"
  movement = which_movement(player[0],r1,r2,r3)
  r1,r2,r3 = place_value(player[1], movement,r1,r2,r3)
  board(r1,r2,r3)
  if win_or_cats(r1,r2,r3,player) != "nothing"
    puts win_or_cats(r1,r2,r3,player)
  end
    if player[0] == player1[0]
      player = player2
    else
      player = player1
    end
  end
elsif answer == "computer"
  ##########################################fix code below
  puts "Computer"
  player2 = ["computer", "o",true]
  puts "please enter the player's name for the x's"
  puts "the computer will be o's"
  player1 = []
  player1[0] = gets.chomp
  player1 << "x"
  player = player1
  while win_or_cats(r1,r2,r3,player) == "nothing"
    if player[2] == true
    movement = comp_move(r1,r2,r3)
    else
    movement = which_movement(player[0],r1,r2,r3)
    end
  r1,r2,r3 = place_value(player[1], movement,r1,r2,r3)
  board(r1,r2,r3)
  if win_or_cats(r1,r2,r3,player) != "nothing"
    puts win_or_cats(r1,r2,r3,player)
  end
    if player[0] == player1[0]
      player = player2
    else
      player = player1
    end
  end
end

