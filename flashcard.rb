module FlashcardPlayer
  class Flashcard
    
    attr_accessor :definition, :term
    
    def initialize(term, definition)
      @term = term
      @definition = definition
      @memorized = false
    end
    
    def correct_definition?(guessed_definition)
      if @definition == guessed_definition 
        @memorized = true 
      end
    end
    
    def memorized?
      @memorized
    end
    
  end
end