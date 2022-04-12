def launch_dice ()
  return rand(6) + 1
end

def climb(start_stair)
  return start_stair + 1
end

def drop(start_stair)
  if start_stair == 0
    return start_stair
  else
    return start_stair - 1
  end
end

def dice_action (dice_value, current_stair)
  if dice_value == 1
    return drop(current_stair)
  elsif dice_value >= 5
    return climb(current_stair)
  else
    return current_stair
  end
end

def check_victory(current_stair)
  return current_stair >= 10
end

def play_game()
  nbr_turn = 0
  position = 0
  until check_victory(position)
    position = dice_action(launch_dice,position)
    nbr_turn += 1
  end
  return nbr_turn
end

def average_finish_time()
  total_turn = 0
  100.times { total_turn += play_game()}
  return total_turn / 100
end


def average_finish_time_n(n)
  total_turn = 0
  n.times { total_turn += play_game()}
  return total_turn / n
end

puts "Sur 100 parties, le jeu c'est terminé en moyenne en #{average_finish_time()} tours."
puts "Souhaitez vous faire un testes sur un nombre defini de parties ? (10, 500, 3000...) y/n"
response = gets.chomp.downcase until response == "y" or response == "n"
if response == "y"
  puts "Combien de parties voulez vous simuler ? Il faut un nombre:"
  nbr = gets.chomp.to_i until nbr.is_a? Integer and nbr > 0
  puts "#{nbr} parties se sont finient en #{average_finish_time_n(nbr)} tours."
end
