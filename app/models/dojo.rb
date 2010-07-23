class Dojo < ActiveRecord::Base
  
  def to_json(options = {})
    super(:methods => [:latitude, :longitude])
  end
  
  def latitude
    lat_long.split(",").first.to_f
  end
  
  def longitude
    lat_long.split(",").last.to_f
  end

end