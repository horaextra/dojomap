class DojoImporter
  
  def initialize
    Dojo.destroy_all
    dojos = YAML.load(File.read("#{RAILS_ROOT}/db/dojos.yml"))

    dojos.each do |dojo|
      Dojo.create(dojo)
    end
  end
  
end