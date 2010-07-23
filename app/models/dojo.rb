class Dojo

  attr_accessor :title, :address, :tip, :working_hour, :purpose, :capacity, :is_public

  def self.all_to_json
    YAML.load(File.read("#{RAILS_ROOT}/db/dojos.yml")).map do |dojo|
      result = {}
      result["latitude"] = dojo["lat_long"].split(",").first.to_f
      result["longitude"] = dojo["lat_long"].split(",").last.to_f
      result
    end
  end
  
  def self.all
    YAML.load(File.read("#{RAILS_ROOT}/db/dojos.yml"))
  end
  
  def self.parse(dojo)
    result = Dojo.new
    result.title = dojo['title']
    result.is_public = dojo['public']
    result.address = dojo['address']
    result.tip = dojo['tip']
    result.purpose = dojo['purpose']
    result.capacity = dojo['capacity']
    result.working_hour = dojo['working_hour']
    result
  end
  
end