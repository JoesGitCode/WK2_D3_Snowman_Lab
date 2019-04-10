class Player

attr_reader :name
attr_accessor :lives

 def initialize(name, lives)
   @name = name
   @lives = lives
 end

 def lose_a_life
   @lives -= 1 #Does lives value stay chnaged.
 end

 def take_a_guess
   player_guess = gets.chomp.downcase
   return player_guess
 end



end
