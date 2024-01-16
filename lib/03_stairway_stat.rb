#Début intruction pour le calcul de stat



#Creation des fonctions

def step_annoncing
  puts "Vous etes à la marche : #{$step}"
  puts "Il vous reste #{10 - $step} marche à faire"
  puts "------------------------------------------------"
end


def dice_throwing
  print "Appuyer sur la touche --> ENTRER <-- pour lancer le dé :"
  # bin=gets
  dice_result = rand 1..6
  puts "Vous avez obtenu... : #{dice_result}"
  return dice_result.to_i
end


def playing(dice_result)
  
  
  if dice_result == 5 || dice_result == 6 #Attention ruby ne comprend pas lorsqu'on écrit A==B||C il faut A==B||A==C
    $step = $step + 1
    puts "Vous avez avancé d'un pas :-)"

  elsif dice_result == 1
    $step = $step - 1
    puts "vous avez reculé d'un pas :-("
    if $step < 0
      $step = 0
    end
  else puts "vous n'avancez pas..."
    

  end 
end


def winner
  puts "Bravo, vous avez atteint la marche 10 ! Mario est à vos pieds... ou pas."
end

#Gestion des fonctions
def perform
  #Début du jeu
  puts "---> Début du JEU <---"
  $step = 0
  $step_to_win = 10

  step_annoncing
  #boucle tant que le joueur n'a pas atteint la marche 10.
  count_tour = 0
  while $step < $step_to_win
    
      count_tour = count_tour + 1
      dice_result = dice_throwing
      playing(dice_result)
      step_annoncing
  
  end  
  
  winner
  return count_tour

end 



def average_fishing_time
  cent_parties = [] #déclare un tableau vide
  100.times do |i| #utilise une boucle pour remplir le tableau
  
    count_tour = perform #Lancement du jeu
    cent_parties[i]= count_tour

  end
  
  somme_tour = 0
  cent_parties.each do |tour|
    somme_tour = somme_tour + tour
  end
  puts "la somme des 100 tours est : #{somme_tour}"
  average_finish_time = somme_tour/100
  puts "la moyenne du nombre de tour pour finir une partie est : #{average_finish_time}"

end 

average_fishing_time
