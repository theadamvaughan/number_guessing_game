number = Random.new.rand(1..1000)

def number_game(ran_num, user_num)
  guesses = 1
  until user_num == ran_num
    guesses += 1
    if user_num > ran_num
      puts "\n#{user_num} is higher than my number, try a lower number!\n\nWhat is your next number?"
      user_num = gets.chomp.to_i
    else
      puts "\n#{user_num} is lower than my number, try a higher number!\n\nWhat is your next number?"
      user_num = gets.chomp.to_i
    end
  end
    if guesses == 1
      puts "Holy smokes! You got it on your first attempt!"
    else
      puts "That's right! #{user_num} is the number I selected!\nYou took #{guesses} attempts to get it right!"
    end
end

puts "I have seleted a number between 1 and 1000. Try to guess what it is!\nCan I have your first guess?"
user_guess = gets.chomp.to_i

number_game(number, user_guess)