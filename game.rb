class Game

   attr_reader :player, :hidden_word
   attr_accessor :guessed_letters

   def initialize(player, hidden_word, guessed_letters)
      @player = player
      @hidden_word = hidden_word
      @guessed_letters = guessed_letters
   end

   def show_hidden_word_display
     return @hidden_word.display
   end

   

   def player_starts_guessing
    hidden_word = show_hidden_word_display
    p "This is your hidden word: #{hidden_word}"
    p "Please guess a letter"
     @player.take_a_guess()
   end


end
