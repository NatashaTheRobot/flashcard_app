require 'simplecov'
require 'rspec'
SimpleCov.start
require_relative 'user'

include FlashcardPlayer

describe "User.new" do
  
  before :each do 
    @user = User.new('./flashcards.txt')
  end
  
  it "initializes the user" do
    @user.should be_an_instance_of User
  end
  
  it "properly parses the flashcards from a file" do
    @user.flashcard_list.length.should eq 81
  end
  
end