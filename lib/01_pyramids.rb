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

puts "Quelle pyramide voulez vous ? choisir parmis les choix suivant:"
puts "half|full|wtf|quit"
print ">"
input = gets.chomp.downcase


case input
when "half" then half_pyramid()
when "full" then full_pyramid()
when "wtf" then wtf_pyramid()
when "quit" then puts "Au revoir !"
else puts "Requete non reconnue, au revoir."
end