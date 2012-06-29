# this is the main file where the execution happens

require_relative 'flashcard'
require_relative 'user'

puts "type 'play' to start playing!"
command = gets.chomp
if command == 'play'
  puts "you can type in 'exit' at any time to quit the game"
  user = FlashcardPlayer::User.new('./flashcards.txt')
  puts '-----------------------------'
  while command != "exit" 
    user.flashcard_list.each do |flashcard|
      next if flashcard.memorized?
      wrong_count = 0
      while wrong_count < 4
        puts "what is the definition of '#{flashcard.term}'"
        command = gets.chomp
        break if command == 'exit'
        if flashcard.correct_definition?(command) == false
          if wrong_count == 3
              puts "You are out of guesses. The definition of #{flashcard.term} is:"
              puts flashcard.definition
          else
            wrong_count += 1
            puts "Wrong, Try Again."
          end
        else
          puts "Correct!"
          break
        end
      end
    end
  end
end
