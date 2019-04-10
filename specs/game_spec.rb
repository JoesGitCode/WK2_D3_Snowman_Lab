require('minitest/autorun')
require('minitest/rg')
require_relative('../game.rb')
require_relative('../HiddenWord.rb')
require_relative('../Player.rb')

class TestGame < MiniTest::Test

   def setup()
     @word1 = HiddenWord.new("a", "*")
     @word2 = HiddenWord.new("gotcha", "******")

     @player1 = Player.new("Bob", 6)
     @player2 = Player.new("Terrence", 1)

     guessed_letters1 = []
     guessed_letters2 = ["q", "z", "x", "s", "w"]
     @round1 = Game.new(@player1, @word1, guessed_letters1)
     @round2 = Game.new(@player2, @word2, guessed_letters2)

   end

   def test_does_game_have_a_player
     assert_equal(@player1, @round1.player)
   end

   def test_does_game_have_a_word
     assert_equal(@word2, @round2.hidden_word)
   end

   def test_does_game_display_guessed_letters
     assert_equal([], @round1.guessed_letters)
   end

   def test_can_game_display_hidden_word
     assert_equal("******", @round2.show_hidden_word_display)
   end

   def test_can_display_be_edited
     assert_equal("a", @word1.update_display("a"))
   end
   #
   # def test_game_receive_user_input
   #   assert_equal("a", @round1.player_starts_guessing)
   # end
   #
   # def test_game_receive_user_input__long_word
   #   assert_equal("a", @round2.player_starts_guessing)
   # end









end
