require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("Bob", 6)
  end

  def test_player_has_a_name
    assert_equal("Bob", @player.name)
  end

  def test_player_lives_can_change
    @player.lives = 2
    assert_equal(2, @player.lives)
  end

  def test_player_loses_a_life
    assert_equal(5, @player.lose_a_life)
  end


end
