module FlashcardPlayer
  class User
    
    def initialize(flashcard_path)
      @flashcards = File.read(flashcard_path)
    end
    
    def flashcard_list
      
    end
    
  end
end