require('minitest/autorun')
require('minitest/rg')
require_relative('../game.rb')
require_relative('../HiddenWord.rb')

class TestGame < MiniTest::Test

   def setup()
     @word1 = HiddenWord.new("a", "*")

     guessed_letters = []
     @round1 = Game.new("Bob", @word1, guessed_letters)
   end

   def test_does_game_have_a_player
     assert_equal("Bob", @round1.player)
   end

   def test_does_game_have_a_word
     assert_equal(@word1, @round1.hidden_word)
   end

   def test_does_game_display_guessed_letters
     assert_equal([], @round1.guessed_letters)
   end
end
