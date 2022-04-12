def half_pyramid ()
  nbr = -1
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"

  until nbr.is_a? Integer and nbr >= 1 and nbr <=25
    puts "Il faut donner un nombre entre 1 et 25 :"
    nbr = gets.chomp.to_i
  end
  nbr.times do |i|
    puts (" "*(nbr-i)).concat("#"*(i+1))
  end
end

def full_pyramid()
  nbr = -1
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
  until nbr.is_a? Integer and nbr >= 1 and nbr <=25
    puts "Il faut donner un nombre entre 1 et 25 :"
    nbr = gets.chomp.to_i
  end
  nbr.times do |i|
    puts (" "*(nbr-i)).concat("#"*(2*i+1)).concat(" "*(nbr-i))
  end
end


def wtf_pyramid ()
  nbr = -1
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages IMPAIR veux-tu ?"
  until nbr.is_a? Integer and nbr >= 1 and nbr <=25 and nbr.odd?
    puts "Il faut donner un nombre IMPAIR entre 1 et 25 :"
    nbr = gets.chomp.to_i
  end
  (nbr/2).times do |i|
    puts (" "*(nbr-i)).concat("#"*(2*i+1)).concat(" "*(nbr-i))
  end
  for i in (nbr/2).downto(0)
    puts (" "*(nbr-i)).concat("#"*(2*i+1)).concat(" "*(nbr-i))
  end
end

 half_pyramid()
# full_pyramid()
# wtf_pyramid()
# Check : SWITCH sous Ruby