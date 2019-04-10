class HiddenWord

  attr_accessor :display, :word

  def initialize(word, display)
    @word = word
    @display = display
  end

  def become_array_word()
    @word.split("")
  end

  def become_array_display
    @display.split("")
  end

  def letter_in_word(guess)
    become_array_word().include?(guess)
  end

end
