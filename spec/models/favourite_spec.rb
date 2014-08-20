require 'rails_helper'

RSpec.describe Favourite, :type => :model do
  before(:each) { @favourite = Favourite.new }
  
  subject { @favourite }
  
  it { should respond_to(:user, :story) }
end
