def signup()
  puts "Definissez un mot de passe:"
  return password = gets.chomp
end

def login (password)
  puts "Quel est le mot de passe ?"
  input = gets.chomp
  until password == input
    puts "Mot de passe incorrect. Quel est le mot de passe ?"
    input = gets.chomp
  end
  puts "Mot de passe correct. Redirection en cours..."
  return TRUE
end

def welcome_screen(log_in)
  if log_in
    puts "Bienvenu sur le site top secret de la NSA"
    puts "------------------------------------------"
    puts "Infos de la semaine :"
    puts "- Mickael Jackson est encore en vie."
    puts "- Le maïs est une crotte de petit poussin"
    puts "- La femme de Macron est un robot"
  end
end

def perform()
  welcome_screen(login(signup()))
end

perform()