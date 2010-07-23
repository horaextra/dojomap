task :import => :environment do
  DojoImporter.new
end