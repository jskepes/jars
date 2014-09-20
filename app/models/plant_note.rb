class PlantNote < ActiveRecord::Base

  belongs_to :plant

  def full_name
    plant.seed.variety.name + " #" + plant.seed.seed_number + " - " + plant.plant_number.to_s
  end

end
