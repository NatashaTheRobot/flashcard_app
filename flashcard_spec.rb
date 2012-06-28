require 'simplecov'
require 'rspec'
SimpleCov.start
require_relative 'flashcard'

include FlashcardPlayer

describe "Flashcard.new" do
  
  before :each do
    @flashcard = Flashcard.new("term", "definition")
  end
  
  it "initializes a flashcard correctly" do
    @flashcard.should be_an_instance_of Flashcard 
  end
  
  it "returns the definition" do
    @flashcard.definition.should eq("definition")
  end
  
  it "returns the term" do
    @flashcard.term.should eq("term")
  end
  
  it "tells whether a guessed definition is correct" do
    @flashcard.correct_definition?("definition").should be_true
    @flashcard.correct_definition?("wrong guess").should be_false
  end
  
  it "tells whether the flashcard was memorized or not" do
    @flashcard.memorized?.should be_false
    @flashcard.correct_definition?("definition") 
    @flashcard.memorized?.should be_true
  end
  
end