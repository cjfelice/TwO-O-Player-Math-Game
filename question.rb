class Question
  attr_accessor :result

  def initialize(player)
    @num1 = rand(20)
    @num2 = rand(20)
    @correct_answer = @num1 + @num2

    puts "Question for #{player}: What is #{@num1} plus #{@num2}?"

    @answer = gets.chomp.to_i

    if @answer == @correct_answer
      puts "-----------------------------"
      puts "CORRECT!"
      puts "-----------------------------"
      @result = true
    else
      puts "-----------------------------"
      puts "WRONG! The correct answer was #{@correct_answer}... YOU LOSE ONE POINT!"
      puts "-----------------------------"
      @result = false
    end
  end
end
      

