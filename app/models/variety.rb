class Variety < ActiveRecord::Base

  has_many :seeds
  
  has_one  :mother, class_name: "Mother", foreign_key: "mother_id"

  has_many :variety_notes
  
end
