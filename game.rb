

require './player'
require './question'

class Game
  attr_accessor :active, :player

  def initialize
    @active = true
    @player = "Player 1"
    player1 = Player.new
    player2 = Player.new
    puts "-----------------------------"
    puts "=== Welcome to Math-Off! ==="
    puts "-----------------------------"
    puts "--- Each player has three lives! Don't Die!!! ---"
    puts "-----------------------------"

    while @active
      new_question = Question.new(@player)
      if new_question.result
        puts "Player 1: #{player1.lives}/3 --- Player 2: #{player2.lives}/3"
        puts "-----------------------------"
        self.switch_player
        puts "--- Next Question Starts... Now! ---"
        puts "-----------------------------"
      else
        if @player == "Player 1"
          player1.incorrect_answer
        else
          player2.incorrect_answer
        end

        if player1.lives == 0 || player2.lives == 0
          @active = false
        else
          puts "Player 1: #{player1.lives}/3 --- Player 2: #{player2.lives}/3"
          puts "-----------------------------"
          self.switch_player
          puts "--- Next Question Starts... Now! ---"
          puts "-----------------------------"
        end
      end
    end
    puts "-----------------------------------"
    puts "GAME OVER - THE LOSER IS #{@player}!!!"
    puts "-----------------------------------"
  end

  def switch_player
    if @player == "Player 1"
      @player = "Player 2"
    else
      @player = "Player 1"
    end
  end

end





