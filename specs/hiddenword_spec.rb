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

  def test_word_string_becomes_array
    word = @word1.word
    assert_equal(["a"], @word1.become_array_word)
  end

  def test_word_string_becomes_array__long_word
    word = @word2.word
    assert_equal(["g", "o", "t", 'c', "h", "a"], @word2.become_array_word)
  end

  def test_display_string_becomes_array__long_word
    word = @word2.display
    assert_equal(["*", "*", "*", "*", "*", "*"], @word2.become_array_display)
  end

  def test_if_letter_exists_in_word

    assert_equal(true, @word1.letter_in_word("a"))
  end



end
