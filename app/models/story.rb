class Story < ActiveRecord::Base
  belongs_to :author
  
  has_many :favourites
end
