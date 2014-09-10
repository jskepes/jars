class Plant < ActiveRecord::Base

  belongs_to :seed
  belongs_to :variety 
  has_many   :plant_notes
  
#  date counts

  def day_12hrs
    if date_12hr 
      (Date.today - date_12hr).to_i
    else
      '---'
    end
  end  
  
  def day_5gal
    if date_5gal 
      if date_12hr
        (date_12hr - date_5gal).to_i
      else
        (Date.today - date_5gal).to_i
      end
    else
      '---'
    end
  end  
  
  def day_1gal
    if date_1gal 
      if date_5gal
        (date_5gal - date_1gal).to_i
      else
        (Date.today - date_1gal).to_i
      end
    else
      '---'
    end
  end  

  def harvest_date
    if date_12hr 
      date_12hr + seed.harvest_days
    else
      '---'
    end
  end  


  def row_class
    if date_12hr
      "twelve"
    else   
      if date_5gal
        "five"
      else
        if date_1gal
          "one"
        else
          if date_grow
            "grow"
          else
            "cut"
          end
        end
      end
    end
  end
  
end
