
# def half_pyramid #contruire la moitier de la pyramid
#   puts "Salut, bienvanue dans ma super pyramide ! Combien d'étage veux tu ?"
#   print "> "

#   floor = gets.chomp.to_i
#   floor.times do |i|
    
#     (floor-i).times do |j|
#       print " "
#     end 
#     (i+1).times do |j|
#       print "#"
#      end 
#     puts ""
    
#   end

# end

# half_pyramid

# def full_pyramid #contruction de la pyramid complete
 
  
#   puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux tu ?"
#   print "> "
#   floor = gets.chomp.to_i
#   floor.times do |i|
    
#     (floor-i).times do |j|
#       print " "
#     end 
    
#     (i+1).times do |j|
#       print "#"
#     end 
#     (i).times do |j|
#       print "#"
#     end 
#     puts ""
#   end
  
  
# end

# full_pyramid

def wtf_pyramid
  
  
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux tu ? (choisis un nombre impair)"
  print "> "
  floor = gets.chomp.to_i

  while floor.even?
    
    
    puts "Le chiffre est paire motherfucker ! Choisis un nombre impaire"
    floor = gets.chomp.to_i
    puts "Le chiffre est-il paire ? : #{floor.even?}"
  end

  first_half_floor = (floor/2)+1
  second_half_floor = (floor/2)

  first_half_floor.times do |i| #1er moitier de la pyramid
    
    (first_half_floor-i).times do |j|
      print " "
    end 
    
    (i+1).times do |j|
      print "#"
    end 
    (i).times do |j|
      print "#"
    end 
    puts ""

  end

  first_half_floor.times do |k| #second moitier de la pyramid
    
    (k+2).times do |l|
      print " "
    end 
    
    ((floor-2)-(2*k)).times do |m|
      print "#"
    end 

    
    puts ""

  end

  


end

wtf_pyramid