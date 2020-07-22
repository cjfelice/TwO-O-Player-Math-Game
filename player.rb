class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def incorrect_answer
    @lives -= 1
  end

end