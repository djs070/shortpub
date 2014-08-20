class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  
  validates_presence_of :story, :user
  validates_uniqueness_of :story, scope: :user
end
