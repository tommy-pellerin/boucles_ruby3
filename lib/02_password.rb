def signup
  puts "Pour acceder à notre espace secret, définisez un mot de passe :"
  print "> "
  defined_password = gets.chomp.to_i
  return defined_password
end

def login(defined_password)
  puts "le mot de passe rentré est : #{defined_password}"
  puts "Maintenant pour acceder à notre espace secret, rentrez un mot de passe :"
  print "> "
  
  password = gets.chomp.to_i
  while password != defined_password
    puts "mot de passe ne correspond pas, retapez le mot de passe"
    password = gets.chomp.to_i
    
    
  end

end

def welcome_screen
  puts "Bienvenu dans la face cachée de la lune !"
end

def perform
  defined_password = signup
  login(defined_password)
  welcome_screen
end

perform
