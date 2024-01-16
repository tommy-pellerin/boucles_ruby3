def say_hello(first_name) #methode pour dire bonjour qui déclarer une entrée(un parametre) first_name qui est utilisé dans la methode
  
  puts "Hello #{first_name}!"#on utilise un parametre, il faut donc definir la valeur du parametre

end

def ask_first_name
  puts "Entrez votre prénom:"
  print "> "
  first_name = gets.chomp #definir la valeur du parametre
  return first_name #retourne le valeur du parametre dans le résultat de la methode ask_first_name
end

first_name = ask_first_name #déclare la variable first_name et lui donne comme valeur, le résultat de la méthode ask_first_name
say_hello(first_name)#appelle la fonction say_hello