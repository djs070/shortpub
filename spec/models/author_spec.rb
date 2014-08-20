require 'rails_helper'

RSpec.describe Author, :type => :model do
  before(:each) { @author = Author.new(name: 'Test Author', description: "Test author's description") }

  subject { @author }

  it { should respond_to(:name, :description, :stories) }
  
  describe "#Stories" do 
    it "has no stories" do
      expect(@author.stories.length).to equal 0
    end
    
    it "can add a story" do
      s = Story.new(title: "Hello world", body: "Hello world body")
      s.save
      @author.stories << s
      @author.save
      expect(@author.stories.length).to equal 1
    end
  end
end
