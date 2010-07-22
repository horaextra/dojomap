class Toilet

  attr_accessor :title, :address, :tip, :working_hour, :purpose, :capacity, :is_public

  def self.all_to_json
    YAML.load(File.read("#{RAILS_ROOT}/db/toilets.yml")).map do |toilet|
      result = {}
      result["latitude"] = toilet["lat_long"].split(",").first.to_f
      result["longitude"] = toilet["lat_long"].split(",").last.to_f
      result
    end
  end
  
  def self.all
    YAML.load(File.read("#{RAILS_ROOT}/db/toilets.yml"))
  end
  
  def self.parse(toilet)
    result = Toilet.new
    result.title = toilet['title']
    result.is_public = toilet['public']
    result.address = toilet['address']
    result.tip = toilet['tip']
    result.purpose = toilet['purpose']
    result.capacity = toilet['capacity']
    result.working_hour = toilet['working_hour']
    result
  end
  
end