require_relative 'flashcard'

module FlashcardPlayer
  class User
    
    def initialize(flashcard_path)
      @flashcard_file = File.read(flashcard_path)
    end
    
    def flashcard_list
      @flashcard_file.split("\n").collect do |flashcard|
        flashcard_array = flashcard.strip.split(/\t{1}/)
        term = flashcard_array[0]
        definition = flashcard_array[1]
        Flashcard.new(term, definition)
      end
    end
    
  end
end