class Toilet
  
  def self.all
    YAML.load(File.read("#{RAILS_ROOT}/db/toilets.yml"))
  end
  
end