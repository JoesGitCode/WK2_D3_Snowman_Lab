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

   def update_display
     word_array = @hidden_word.become_array_word
    p word_array
     display_array = @hidden_word.become_array_display
    p display_array

    updated_display = display_array[word_array.index(@player.take_a_guess)] = @player.take_a_guess

    "'#{update_display.join("")}'"
   end




   def player_starts_guessing
     while @hidden_word.display != @hidden_word.word || @player.lives != 0
       hidden_word = show_hidden_word_display
       p "This is your hidden word: #{hidden_word}"
       p "Please guess a letter"
        @player.take_a_guess()
      end
      p "You win!"

   end


end
