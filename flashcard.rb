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
        return true
      end
      false
    end
    
    def memorized?
      @memorized
    end
    
  end
end