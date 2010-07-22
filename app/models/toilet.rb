class Toilet

  attr_accessor :title, :address, :tip, :working_hours, :purpose, :capacity

  def self.all
    YAML.load(File.read("#{RAILS_ROOT}/db/toilets.yml")).map do |toilet|
      result = {}
      result["latitude"] = toilet["lat_long"].split(",").first.to_f
      result["longitude"] = toilet["lat_long"].split(",").last.to_f
      result
    end
  end
  
end