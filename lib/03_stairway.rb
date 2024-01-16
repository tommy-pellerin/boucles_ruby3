#Début du jeu
puts "---> Début du JEU <---"
$step = 0
$step_to_win = 10

#Creation des fonctions

def step_annoncing
  puts "Vous etes à la marche : #{$step}"
  puts "Il vous reste #{10 - $step} marche à faire"
  puts "------------------------------------------------"
end


def dice_throwing
  print "Appuyer sur la touche --> ENTRER <-- pour lancer le dé :"
  bin=gets
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
  step_annoncing
    
  while $step < $step_to_win
  
      dice_result = dice_throwing
      playing(dice_result)
      step_annoncing
  
  end  
  
  winner
  
end

#Lancement du jeu
perform

def average_fishing_time
  
end 