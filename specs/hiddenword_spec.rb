require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword.rb')

class TestHiddenWord < MiniTest::Test

  def setup()
    @word1 = HiddenWord.new("a", "*")
    @word2 = HiddenWord.new("gotcha", "******")
  end

  def test_what_is_the_word
    assert_equal("a", @word1.word)
  end

  def test_what_is_the_display
    assert_equal("*", @word1.display)
  end

  def test_display_can_change
    @word2.display = "****h*"
    assert_equal("****h*", @word2.display)
  end
end
