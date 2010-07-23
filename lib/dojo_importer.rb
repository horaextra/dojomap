class DojoImporter
  
  def initialize
    dojos = YAML.load(File.read("#{RAILS_ROOT}/db/dojos.yml"))

    dojos.each do |dojo|
      d = Dojo.find_or_create_by_lat_long(dojo["lat_long"])
      d.update_attributes(dojo)
    end
  end
  
end