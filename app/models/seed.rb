class Seed < ActiveRecord::Base

  belongs_to :variety
  has_many   :plants
  
end
