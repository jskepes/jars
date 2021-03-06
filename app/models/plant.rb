class Plant < ActiveRecord::Base

  belongs_to :seed
  belongs_to :variety
  has_many   :plant_notes
  has_many   :harvests
  
  def full_name
    seed.variety.name + " #" + seed.seed_number + " - " + plant_number.to_s
  end
  
  def total_yield
    if harvests.sum(:yield) > 0
      harvests.sum(:yield)
    else
      '---'
    end  
  end
  
#  date counts

  def day_12hrs
    if date_12hr 
      if date_dead
        (date_dead - date_12hr).to_i
      else
        (Date.today - date_12hr).to_i
      end
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
  
  def day_cup
    if date_grow 
      if date_1gal
        (date_1gal - date_grow).to_i
      else
        (Date.today - date_grow).to_i
      end
    else
      '---'
    end
  end  

  def day_grow
    if date_wet
      if date_grow
        (date_grow - date_wet).to_i
      else
        if date_dead
          (date_dead - date_wet).to_i 
        else
          if date_1gal || date_5gal
            '---'
          else  
            (Date.today - date_wet).to_i
          end
        end  
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
    if date_dead
      "dead"
    else   
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
  
end
